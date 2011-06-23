# coding: utf-8
class TestsessionsController < ApplicationController
  before_filter :login_required,:only=>[:fastconf,:create,:check,:complete]
  before_filter :prev,:only=>[:show,:complete]
  def new
    if logged_in?
      @ts=current_user.testsessions.last
      redirect_to :action=>:show,:id=>@ts.id.to_s,:num=>"1" and return false if @ts and @ts.completed!=1
    end
    @ai='#item1'
    @ts=Testsession.new
  end

  def create
    @ts=Testsession.new
    unless params[:testsession]&&params[:testsession][:tconfiguration_id]
      @ts.errors.add("id","Не выбран тест")
      render :action=> :new and return
    end
    @tconf=Tconfiguration.find(params[:testsession][:tconfiguration_id])
    @themes=@tconf.themes.map{|t| t.id}
    @ctypes=Hash[ConfigurationType.all.map{|u| [u.Name,u.id]}]
    @simpleconf="Простой"
    st=" and (theme_id in ("+@themes.join(", ")+"))"
    qtypes=[@tconf.qT1Count, @tconf.qT2Count, @tconf.qT3Count, @tconf.qT4Count, @tconf.qT5Count]
    unless @tconf.configuration_type_id==@ctypes[@simpleconf]
      f=true
      qtypes.each_index { |i| f=f && (Question.where("(qtype_id= #{i+6})"+ st).count>=qtypes[i]) }

    else
      f=Question.where({:theme_id=>@themes}).count>=qtypes[0]
    end
    unless f
      @ts=current_user.testsessions.build
      @ts.errors.add("db","Вопросовв базе данных недостаточно.")
      render :action=>:new and return
    end
    unless @tconf.configuration_type_id==@ctypes[@simpleconf]
      @q=Array.new(5){|i| nil}
      0.upto(4) do |i|
        @q[i]=Question.where("(qtype_id= #{i+6})"+ st).map { |u| u.id }
      end
    else
      @q=Question.where({:theme_id=>@themes}).map{ |u| u.id }
    end
    @ts=current_user.testsessions.build(params[:testsession])
    @ts.completed=0
    @ts.mark=2
    @ts.percent=0
    @ts.save
    @quests=Array.new
    unless @tconf.configuration_type_id==@ctypes[@simpleconf]
      0.upto(4) { |i| @quests.concat(@q[i].shuffle.first(qtypes[i])) }
      @quests.shuffle!
    else
      @quests=@q.shuffle.first(qtypes[0])
    end
    @quests.each do |q|
      question=Question.find(q)
      if question.qtype_id != 9 #не на соотношение
        answs=question.answers.map{|i| i.id}.shuffle
        answorder=answs.join(" ")
      else
        answs=question.answers
        answs1=answs.select{|q| q.col==1}.map{|i| i.id}.shuffle.join(" ")
        answs2=answs.select{|q| q.col==2}.map{|i| i.id}.shuffle.join(" ")
        answorder=answs1+","+answs2
      end
      @test=@ts.tests.build
      @test.question_id=q
      @test.answorder=answorder
      @test.useransw=""
      @test.ok=0
      @test.save

    end
    if (:back!=1) 
    redirect_to :action=>:show,:id=>@ts.id.to_s,:num=>"1"
    end
  end

  def show

    @num=params[:num].to_i-1
    
    @ts=current_user.testsessions.find(params[:id])
    redirect_to :action=>:complete,:id=>params[:id] if @ts.completed==1  and return
    if !@ts.tconfiguration
    @ts.update_attribute(:completed, 1)
    redirect_to :action=>:new and return
    end
    @count=@ts.tests.count
    @has_answer=@ts.tests.map{|i| i.useransw.length>0 }.unshift(false)
    @end=false
    if @num>=@count
      @end=true
    else
      @test=@ts.tests[@num]
      @question=Question.find(@test.question_id)
      answs=Answer.all
      @answers=Hash.new
      answs.each { |item| @answers[item.id]=item }
      if @question.qtype_id!=9
        @answorder=@test.answorder.split(' ').map{|el| el.to_i}
        @a_count=@answorder.length
      else
        tok=@test.answorder.split(',')
        @answorder1=tok[0].split(' ').map{|el| el.to_i}
        @answorder2=tok[1].split(' ').map{|el| el.to_i}
        @a1_count=@answorder1.length
        @a2_count=@answorder2.length
      end
      case @question.qtype_id
      when 6
        @ua=@test.useransw.to_i
        @ua=-1 if @ua==0&&@test.useransw!="0"
      when 8
        @ua=@test.useransw
      when 7
        aa=@test.useransw.split('|%')
        @ua=Array.new(@a_count){|it| aa.include?(it.to_s)}
      when 9,10
        aa=@test.useransw.split('|%')
        @ua=Hash.new
        aa.each_index{|index| @ua[index]=aa[index]}
        @ua.default=nil
      end
      
      
    end
    t=Time.now
     @dt=t-@ts.created_at
     @tt=  @ts.tconfiguration.TestTime-Time.utc(2000,1,1,0,0,0)
    @dt=@tt-@dt
    @dt=@dt.to_i
    @hour=@dt/3600
    @min=@dt%3600/60
    @sec=@dt%60
  end

  def destroy
  end
  def delete
    @ts=Testsession.find(params[:id])
   
      @ts.destroy
    redirect_back_or_default(:controller=>:report,:action=>:new_report)
  end

  def check
    @num=params[:num].to_i
    if @num
      @num-=1
      @ts=current_user.testsessions.find(params[:id])
    t=Time.now
     @dt=t-@ts.created_at
     @tt=  @ts.tconfiguration.TestTime-Time.utc(2000,1,1,0,0,0)
    @dt=@tt-@dt
    @dt=@dt.to_i
      if @ts.completed==1 || @dt<0
        redirect_to :action=>:complete, :id=>params[:id] and return
      end
      tests=@ts.tests
      @test=tests[@num]
      @count=@ts.tests.count
      @question=Question.find(@test.question_id)
      answs=@question.answers
      @answers=Hash.new
      answs.each { |item| @answers[item.id]=item }

      useransw=params[:answ]
      if @question.qtype_id!=9
        @answorder=@test.answorder.split(' ').map{|el| el.to_i}
        @a_count=@answorder.length
      else
        tok=@test.answorder.split(',')
        @answorder1=tok[0].split(' ').map{|el| el.to_i}
        @answorder2=tok[1].split(' ').map{|el| el.to_i} 
      end
      f=true
      qt=@question.qtype_id
      case qt
        when 6
          f=false unless useransw && @answers[@answorder[useransw.to_i]].right==1
          ua=""
          ua=useransw #unless useransw
        when 7
          useransw=Hash.new unless useransw
          useransw=useransw.select{|key,value| value=="1"}
          ra=@answers.delete_if{|key,value| value.right!=1}
          if ra.length==useransw.length
            useransw.each_key{|key| f &&= ra.has_key?(@answorder[key.to_i])}
          else
            f=false
          end
          ua=useransw.keys.join('|%')
        when 8
          ra=Hash.new
          @answers.each { |key,value| ra[key]=value.content.mb_chars.downcase.to_s  }
          f=(ra.value?(useransw.mb_chars.downcase.to_s)) #||(ra.value.downcase?(useransw.downcase))
          ua=useransw
        when 9
          useransw.each { |key,value| f&&=((value.to_i==0)&&(@answers[@answorder2[key.to_i]].right==0))||((value.to_i!=0)&&@answers[@answorder2[key.to_i]].right==@answers[@answorder1[value.to_i-1]].right)}
          ua=useransw.values.join('|%')
        when 10
          0.upto(@a_count-1) {|i| f&&= useransw[(@answers[@answorder[i]].right-1).to_s].to_i==i+1}
          ua=useransw.values.join('|%')
      end
      if f
        @test.update_attributes("ok"=> 1,"useransw"=>ua)
      else
        @test.update_attributes("ok"=> 0,"useransw"=>ua)
      end
      if !ua
        @test.update_attributes("useransw"=>"")
      end
      #@test.update_attribute("useransw",ua)
    end
    redirect_to :action=>:show,:id=>params[:id],:num=>(params[:num].to_i+1).to_s
  end

  def complete
    @ts=current_user.testsessions.find(params[:id])
    
    #@ts.update_attribute("completed",1)
    @tests=@ts.tests
    qs=@ts.questions
    @ra_count=0
    @rank=2

    @tests.each{|t| @ra_count+=t.ok}
    @percent=@ra_count.to_f/@tests.length.to_f*100.0

    if @percent>= @ts.tconfiguration.degree3 
      @rank=@rank+1
    end
    if @percent>= @ts.tconfiguration.degree4
      @rank+=1
    end
    if @percent >= @ts.tconfiguration.degree5
      @rank+=1
    end
 
    @ts.update_attributes(:completed=>1,:mark=>@rank,:percent=>@percent) if @ts.completed!=1
    @questions=Array.new
    @tests.each{|t| @questions.push(qs.detect{|q| q.id==t.question_id})}
    #@tests.each{|t| @questions.push(Question.find(t.question_id))}
    @rights=Array.new(@tests.length){|u| '-'}
    @tests.each_index{|i| @rights[i] = '+' if @tests[i].ok==1}
    
  end
private
  def prev
    @ai='#item1'
    @is_test=true
  end
end
