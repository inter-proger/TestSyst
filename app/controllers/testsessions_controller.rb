class TestsessionsController < ApplicationController
  def new
    @testsession = Testsession.new
     respond_to do |format|
       format.html
      format.xml {render :xml => @testsession}
     end
  end

  def index
     @testsessions= Testsession.all
    respond_to do |format|
      format.html
      format.xml {render :xml => @testsessions}
    end
  end

  def show
    @testsession= Testsession.find(params[:id])
    respond_to do |format|
       format.html
      format.xml {render :xml => @testsession}
    end
  end

end
