# coding: utf-8


class ReportController < ApplicationController
  before_filter :login_required
  before_filter :menu
  before_filter :admin_required,:only=>[:adv_search_report,:delete]
  before_filter :search,:only=>[:create_report,:create_printable_report]

  class AnswerReport
    attr_accessor :answorder,:answorder2,:useransw,:question,:rightansw,:type,:answers,:right,:questionchanged
  end

  class Type9Format
    attr_accessor :a1,:a2,:right
  end

def createdetailreport

  @user=User.find(params[:userid])
  @ts=@user.testsessions.find(params[:id])


  @tests=@ts.tests
  qs=@ts.questions
  @tconf=@ts.tconfiguration
  if @tconf.updated_at>@ts.updated_at

  end
  @degrees=[@tconf.degree3,@tconf.degree4,@tconf.degree5]

  @ra_count=0
  @tests.each{|t| @ra_count+=t.ok}
  @percent=@ra_count.to_f/@tests.length.to_f*100.0

 @mark=@ts.mark
  if @mark>2
    @color='#00FF00'
    @zachet='Зачтено'
  else
    @color='#FF0000'
    @zachet='Не зачтено'
  end
  @questions=Array.new
  @tests.each{|t| @questions.push(qs.detect{|q| q.id==t.question_id})}
  @rights=Array.new(@tests.length){|u| '-'}
  @reports=Array.new
  @tests.each_index do |i|
    @rights[i] = '+' if @tests[i].ok==1
    rep=AnswerReport.new
    rep.right=@rights[i]
    unless questchange?(@tests[i], @questions[i])
      rep.questionchanged=false
      rep.question=@questions[i].content
      rep.type=@questions[i].qtype_id
      
      answs=@questions[i].answers
      rep.answers=Hash.new
      answs.each { |item| rep.answers[item.id]=item }
      if rep.type!=9
        rep.answorder=@tests[i].answorder.split(' ').map{|el| el.to_i}
      else
        tok=@tests[i].answorder.split(',')
        rep.answorder=tok[0].split(' ').map{|el| el.to_i}
        rep.answorder2=tok[1].split(' ').map{|el| el.to_i}
      end
      case rep.type
      when 6
        if @tests[i].useransw!=""
          rep.useransw=@tests[i].useransw.to_i
        else
          rep.useransw=100000
        end
        rrrr=rep.answers.detect{|k,v| v.right==1}
        unless rrrr
          rep.rightansw=nil
        else
          rep.rightansw=rep.answers.detect{|k,v| v.right==1}[0]
        end
        
      when 7
        rep.useransw=@tests[i].useransw.split('|%')
        rep.rightansw=rep.answers.select{|k,v| v.right==1}.keys
      when 8
        rep.useransw=@tests[i].useransw
        rep.rightansw=rep.answers
      when 9
        rep.useransw=Array.new(rep.answorder.length){|it| Type9Format.new}
        rep.useransw.each{|it| it.a2=""}
        rep.answorder.each_index{|it| rep.useransw[it].a1=rep.answers[rep.answorder[it]].content }
        ans=@tests[i].useransw.split('|%',-100).map{|it| it.to_i-1}
        @ans=ans
        @t=@tests[i].useransw
        ans.push(-1) if ans.length<rep.answorder2.length
        ans.each_index do|it|
          if ans[it]!=-1
            rep.useransw[ans[it]].a2=rep.answers[rep.answorder2[it]].content
          else
            p=Type9Format.new
            p.a1=""
            p.a2=rep.answers[rep.answorder2[it]].content
            rep.useransw.push(p)
          end
        end
        rep.rightansw=Array.new(rep.answorder.length){|it| Type9Format.new}
	usednums=Array.new
        rep.rightansw.each{|it| it.a2=""}
        rep.answorder.each_index do |it|
          rep.rightansw[it].a1=rep.answers[rep.answorder[it]].content
	usednums.push(rep.answorder[it])
         if rep.answers.select{|k,v| v.right==rep.answers[rep.answorder[it]].right&&v.col==2}.count>=1 
		num1=rep.answers.select{|k,v| v.right==rep.answers[rep.answorder[it]].right&&v.col==2}.keys[0]
		usednums.push(num1)
		curtemp=rep.answers.select{|k,v| v.right==rep.answers[rep.answorder[it]].right&&v.col==2}.values.map{|vv| vv.content}[0]
		rep.rightansw[it].a2=curtemp
	end
	#@ctemp=@ctemp[1].content
	#rep.rightansw[it].a2=rep.answers.detect{|k,v| v.right==rep.answers[rep.answorder[it]].right&&v.col==2}[1].content if curtemp.size==2
	#rep.rightansw[it].a2=curtemp.select{|k,v| v.col==2}.values[0].content if curtemp.size>=1
        end
        arr=rep.answers.select{|k,v| usednums.count(k)==0}
        arr.each do |it|
          p=Type9Format.new
          p.a1=""
          p.a2=it[1].content
          rep.rightansw.push(p)
        end
        rep.useransw.each do |it|
          if rep.rightansw.count{|k| k.a1==it.a1&&k.a2==it.a2}>0
            it.right=true
          else
            it.right=false
          end
        end
        #ans=Array.new
      when 10
        rep.useransw=@tests[i].useransw.split('|%').map{|it| rep.answers[rep.answorder[it.to_i-1]]}
        rep.rightansw=rep.answers.sort{|a,b| a[1].right<=>b[1].right }.map{|it| it[1]}
      end

    else
      rep.questionchanged=true
    end
    @reports.push(rep)
  end


end

def new_report

  @users=User.all
  @configs_options=Tconfiguration.all.map{|ob| [ob.Name, ob.id]}
  @configs_options.unshift(['-----',-1])
  #@fam_options=@users.map{|u| []}

end

def adv_search_report
  @users=User.all
  @configs_options=Tconfiguration.all.map{|ob| [ob.Name, ob.id]}
  @configs_options.unshift(['-----',-1])
end


def create_printable_report
  render :layout=>"printable"
end

def create_report

    #pagination
  @parametrs=params
  if params[:pagenum]
    @pagenum=params[:pagenum].to_i
  else
    @pagenum=1
  end
  @perpage=30
  @pagecount=@sessions.length/@perpage
  @pagecount+=1 if @sessions.length%@perpage!=0
  @firstline=(@pagenum-1)*@perpage
  @sessions=@sessions.drop(@firstline).take(@perpage)
  #marks
=begin
  @marks=[]
  @zachets=[]
  @colors=[]
  @percents=[]
  @sessions.each do |ses|
    @ts=Testsession.find(ses.id)
    @tests=@ts.tests
    @tconf=@ts.tconfiguration
    @degrees=[@tconf.degree3,@tconf.degree4,@tconf.degree5]
    @ra_count=0
    @tests.each{|t| @ra_count+=t.ok}
    @percent=(@ra_count.to_f/@tests.length.to_f*100.0)
    @percents.push(@percent)
    @mark=2
    @degrees.each { |item2| @mark+=1 if @percent>item2  }
    @marks.push(@mark)
    if @mark>2
      @color='#00FF00'
      @zachet='Зачтено'
    else
      @color='#FF0000'
      @zachet='Не зачтено'
    end
    @zachets.push(@zachet)
    @colors.push(@color)

  end
=end

end

def configwereupdated
  @ai='#item5'
end

def delete
  ch=params[:del]
  ss=params[:ses]
 if ch && ss
  ss.each_index do |i|
    if ch[i.to_s]=='1'
       Testsession.find(ss[i]).destroy
    end
  end
 end
  redirect_back_or_default(:controller=>:report,:action=>:new_report)
end
private
def questchange?(test,quest)
  return true unless quest
  return true if quest.updated_at>test.created_at
  toks=test.answorder.split(',')
  answs=Array.new
  toks.each{|t| answs+=t.split(' ').map{|u| u.to_i}} 
  begin
    answ=quest.answers.find(answs)
  rescue ActiveRecord::RecordNotFound
    return true
  end
  answ.each do |a|
    return true if a.updated_at>test.created_at
  end
  quest.answers.each do |a|
    return true unless answs.detect{|h| h==a.id}
  end
  false
end

def menu
  @ai='#item5'
  @secondmenu=true
end

def search
  hsh1=Hash.new
  hsh1[:testsessions]={}
  hsh1[:tconfigurations]={}
  hsh1[:users]={}
  hsh1[:users][:id]=current_user.id unless current_user.is_admin?
  if params[:beg_testdate]&&params[:beg_testdate]!=""
    d1=params[:beg_testdate].to_datetime.beginning_of_day
    if  params[:end_testdate]&&params[:end_testdate]!=""
      d2=params[:end_testdate].to_datetime.end_of_day
      hsh1[:testsessions][:created_at]= d1..d2
    else
      hsh1[:testsessions][:created_at]=d1..d1.end_of_day
    end
  end
  #hsh2=Hash.new
  hsh1[:testsessions][:tconfiguration_id]=params[:tconfiguration] if params[:tconfiguration]&&params[:tconfiguration]!='-1'
  hsh1[:users][:F]=params[:f] if params[:f]&&params[:f]!=''
  hsh1[:users][:I]=params[:i] if params[:i]&&params[:i]!=''
  hsh1[:users][:O]=params[:o] if params[:o]&&params[:o]!=''
  if params[:startdate]&&params[:startdate]!=""
    d1=params[:startdate].to_datetime.beginning_of_day
    if params[:enddate]&&params[:enddate]!=""
      d2=params[:enddate].to_datetime.end_of_day
      hsh1[:testsessions][:created_at]= d1..d2
    else
      hsh1[:testsessions][:created_at]=d1..d1.end_of_day
    end
  end
  hsh1[:users][:sertype_id]=params[:sertype] if params[:sertype]&&params[:sertype]!='-1'
  hsh1[:users][:serlevel_id]=params[:serlevel] if params[:serlevel]&&params[:serlevel]!='-1'
  hsh1[:users][:education_id]=params[:education] if params[:education]&&params[:education]!='-1'
  hsh1[:users][:sphere_id]=params[:sphere] if params[:sphere]&&params[:sphere]!='-1'
  hsh1[:users][:workplace]=params[:workplace] if params[:workplace]&&params[:workplace]!=''
  hsh1[:users][:proff]=params[:proff] if params[:proff]&&params[:proff]!=''

  @sessions=Testsession.joins(:tconfiguration,:user).select('testsessions.id, testsessions.created_at, testsessions.tconfiguration_id,testsessions.user_id,tconfigurations.Name,users.F,users.I,users.O,testsessions.mark,testsessions.percent').where(hsh1)

end

end
