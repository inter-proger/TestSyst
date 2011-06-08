#coding: utf-8

class TconfigurationsController < ApplicationController
  before_filter :login_required
  before_filter :admin_required, :only=>[:new,:create,:destroy,:edit]
  # GET /tconfigurations
  # GET /tconfigurations.xml
  def index
    @ai='#item3'
    @tconfigurations = Tconfiguration.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tconfigurations }
    end
  end

  # GET /tconfigurations/1
  # GET /tconfigurations/1.xml
  def show
    @ai='#item3'
    @tconfiguration = Tconfiguration.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tconfiguration }
    end
  end

  # GET /tconfigurations/new
  # GET /tconfigurations/new.xml
  def new
    @ai='#item3'
    @tconfiguration = Tconfiguration.new
    @themes= Theme.all.map{|th| [th.title, th.id]}

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tconfiguration }
    end
  end

  # GET /tconfigurations/1/edit
  def edit
    @ai='#item3'
    @tconfiguration = Tconfiguration.find(params[:id])
    @themes= Theme.all.map{|th| [th.title, th.id]}
    @the=@tconfiguration.themes.map { |e| e.id } 
    @arr=Array.new
    @themes.each_index { |i| @arr.push(i+1) if @the.include?(@themes[i][1])  }

        
  end

  def fastconf
    th=Array.new
    qtypes=Array.new
    onet=Theme.find(params[:th])
   # th.push(onet)
    all_themes_id=onet.map{|i| i.id}
   
    st=" and (theme_id in ("+all_themes_id.join(", ")+"))"
    (0).upto(4) { |i|  (qtypes[i]=Question.where("(qtype_id= #{i+6})"+ st).count) }
    d=Tconfiguration.where("Name='fastconf'").first
    d.destroy
    #del=Tconfiguration.where(["Name= ?","fastconf"])
   # del.destroy
   tt=Tconfiguration.create( :themes=>onet,:Name=>"fastconf",:configuration_type_id=>1,:qT1Count=>qtypes[0],:qT2Count=>qtypes[1],:qT3Count=>qtypes[2],:qT4Count=>qtypes[3],:qT5Count=>qtypes[4],:degree3=>60,:degree4=>80,:degree5=>90,:TestTime=>Time.zone.parse("2000-01-01 00:45:00"))
   
      redirect_to :controller => :testsessions,:action=>:create,:testsession=>{:tconfiguration_id=>tt.id}
#      ts=Testsession.create!(:tconfiguration_id=>tt.id,:user_id=>current_user.id,:completed=>0)


 #      redirect_to ts,:action=>:show,:num=>1 and return

      
  end
  # POST /tconfigurations
  # POST /tconfigurations.xml
  def create
    @ai='#item3'
    @tconfiguration = Tconfiguration.new(params[:tconfiguration])
    unless params[:themes]
      @tconfiguration.errors.add("Вопросов","не достаточно")
      @themes=Theme.all.map{|t| [t.title,t.id]}
      render :action => "new" and return
    end
    if @tconfiguration.configuration_type_id==5
      st=" and (theme_id in ("+params[:themes].join(", ")+"))"
      f1=Question.where("(qtype_id= 6)"+ st).count>=params[:tconfiguration][:qT1Count].to_i
      f2=Question.where("(qtype_id= 7)"+ st).count>=params[:tconfiguration][:qT2Count].to_i
      f3=Question.where("(qtype_id= 8)"+ st).count>=params[:tconfiguration][:qT3Count].to_i
      f4=Question.where("(qtype_id= 9)"+ st).count>=params[:tconfiguration][:qT4Count].to_i
      f5=Question.where("(qtype_id= 10)"+ st).count>=params[:tconfiguration][:qT5Count].to_i
      f=f1&&f2&&f3&&f4&&f5
      unless f
        @tconfiguration.errors.add("Вопросов","не достаточно")
        @themes=Theme.all.map{|t| [t.title,t.id]}
        render :action => "new" and return
      end
    else
      hsh={}
      hsh[:theme_id]=params[:themes]
      unless Question.where(hsh).count>=params[:qCount].to_i
        @tconfiguration.errors.add("Вопросов","не достаточно")
        @themes=Theme.all.map{|t| [t.title,t.id]}
        render :action => "new" and return
      end
      #@tconfiguration =Tconfiguration.new
      #@tconfiguration.Name=params[:tconfiguration][:Name]
      #@tconfiguration.
      @tconfiguration.qT1Count=params[:qCount].to_i
      @tconfiguration.qT2Count=0
      @tconfiguration.qT3Count=0
      @tconfiguration.qT4Count=0
      @tconfiguration.qT5Count=0
    end

    respond_to do |format|
      if @tconfiguration.save
        format.html {
          params[:themes].each do |t|
            @rel=@tconfiguration.configthemerelations.create(:theme_id=>t)
          end
          redirect_to(@tconfiguration, :notice => 'Конфигурация успешно создана') }
        format.xml  { render :xml => @tconfiguration, :status => :created, :location => @tconfiguration }
      else
        format.html { redirect_to :action => "new" }
        format.xml  { render :xml => @tconfiguration.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tconfigurations/1
  # PUT /tconfigurations/1.xml
  def update
    @ai='#item3'
    @tconfiguration = Tconfiguration.find(params[:id])
     @themes= Theme.all.map{|th| [th.title, th.id]}
     #=========from create===========
      unless params[:themes]
      @tconfiguration.errors.add("Вопросов","не достаточно")
      @themes=Theme.all.map{|t| [t.title,t.id]}
      render :action => "edit" and return
    end
    if @tconfiguration.configuration_type_id==5
      st=" and (theme_id in ("+params[:themes].join(", ")+"))"
      f1=Question.where("(qtype_id= 6)"+ st).count>=params[:tconfiguration][:qT1Count].to_i
      f2=Question.where("(qtype_id= 7)"+ st).count>=params[:tconfiguration][:qT2Count].to_i
      f3=Question.where("(qtype_id= 8)"+ st).count>=params[:tconfiguration][:qT3Count].to_i
      f4=Question.where("(qtype_id= 9)"+ st).count>=params[:tconfiguration][:qT4Count].to_i
      f5=Question.where("(qtype_id= 10)"+ st).count>=params[:tconfiguration][:qT5Count].to_i
      f=f1&&f2&&f3&&f4&&f5
      if !f
        @tconfiguration.errors.add("Вопросов","не достаточно")
        @themes=Theme.all.map{|t| [t.title,t.id]}
        render :action => "edit" and return
      end
    else
      hsh={}
      hsh[:theme_id]=params[:themes]
      unless Question.where(hsh).count>=params[:qCount].to_i
        @tconfiguration.errors.add("Вопросов","не достаточно")
        @themes=Theme.all.map{|t| [t.title,t.id]}
        render :action => "new" and return
      end
      @tconfiguration.qT1Count=params[:qCount].to_i
      @tconfiguration.qT2Count=0
      @tconfiguration.qT3Count=0
      @tconfiguration.qT4Count=0
      @tconfiguration.qT5Count=0
    end
     #====================
    respond_to do |format|
      if @tconfiguration.update_attributes(params[:tconfiguration].merge({:qt1Count=>params[:qCount].to_i,:qt2Count=>0,:qt3Count=>0,:qt4Count=>0,:qt5Count=>0}))
        format.html {
          
          @tconfiguration.themes.delete(@tconfiguration.themes)


            params[:themes].each do |t|
            @rel=@tconfiguration.configthemerelations.create(:theme_id=>t)
            end
          redirect_to(@tconfiguration, :notice => 'Конфигурация успешно обновлена')

          }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tconfiguration.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tconfigurations/1
  # DELETE /tconfigurations/1.xml
  def destroy
    @tconfiguration = Tconfiguration.find(params[:id])
    @tconfiguration.destroy

    respond_to do |format|
      format.html { redirect_to(tconfigurations_url) }
      format.xml  { head :ok }
    end
  end
end
