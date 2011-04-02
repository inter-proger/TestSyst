class PicturesController < ApplicationController
  def create
    @discipline=Discipline.find(params[:discipline_id])
    @theme=@discipline.themes.find(params[:theme_id])
    @q=Question.find(params[:question_id])    
    if @q.pictures.any?
      @pict=@q.pictures[0]
      @pict.remove_pict!
      @pict.destroy
    end

    @pict=Picture.new
    @pict.pict=params[:picture][:pict]
    @pict.question_id=params[:question_id]
    @pict.save!
    redirect_to discipline_theme_question_path(@discipline,@theme,@q)
  end

  def destroy
  end

end
