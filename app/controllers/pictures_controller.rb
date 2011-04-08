# coding: utf-8

class PicturesController < ApplicationController
  def create
    @discipline=Discipline.find(params[:discipline_id])
    @theme=@discipline.themes.find(params[:theme_id])
    @q=Question.find(params[:question_id])    
    if params[:picture][:pict] == nil
            redirect_to discipline_theme_question_path(@discipline,@theme,@q), :notice => 'Ошибка загрузки.' and return
    end
    @pict1=Picture.new
    @pict1.pict=params[:picture][:pict]
    
    if @q.pictures.any?
      @pict=@q.pictures[0]
      @pict.remove_pict!
      @pict.destroy
    end

    
    @pict1.question_id=params[:question_id]
    if @pict1.save

      redirect_to discipline_theme_question_path(@discipline,@theme,@q), :notice => 'Изображение загружено.'
    else
      redirect_to discipline_theme_question_path(@discipline,@theme,@q), :notice => 'Ошибка загрузки.'
    end
  end

  def destroy
  end

end
