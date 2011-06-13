# coding: utf-8
class Tconfiguration < ActiveRecord::Base
  validates_presence_of :Name, :message =>'Не введено название кофигурации'
  validates_presence_of :qT1Count, :qT2Count,:qT3Count,:qT4Count, :qT5Count,:message =>'Не указано количество вопросов'
  validates_presence_of :degree3,:degree4,:degree5,:message =>'Не указано необходимое количество ответов для одной или нескольких оценок'
  validates_uniqueness_of :Name, :message =>'Конфигурация с таким именем уже существует'
  validates_numericality_of :qT1Count,:only_integer => true, :greater_than => -1 , :message=>'Количество ответов должно быть целым положительным числом'
  validates_numericality_of :qT2Count, :only_integer => true, :greater_than => -1,:less_than_or_equal_to =>   Question.where("qtype_id= 7").count , :message=>'Количество ответов должно быть целым положительным числом'
  validates_numericality_of :qT3Count, :only_integer => true, :greater_than => -1,:less_than_or_equal_to =>   Question.where("qtype_id= 8").count , :message=>'Количество ответов должно быть целым положительным числом'
  validates_numericality_of :qT4Count, :only_integer => true, :greater_than => -1,:less_than_or_equal_to =>  Question.where("qtype_id= 9").count , :message=>'Количество ответов должно быть целым положительным числом'
  validates_numericality_of :qT5Count, :only_integer => true, :greater_than => -1,:less_than_or_equal_to =>   Question.where("qtype_id= 10").count , :message=>'Количество ответов должно быть целым положительным числом'
  
  validates_numericality_of :degree3, :only_integer => true, :message=>'Необходимое количество ответов на 3 должно быть целым положительным числом'
  validates_numericality_of :degree4, :only_integer => true, :greater_than => :degree3, :message =>'Значение не может быть меньше чем оценка за 3'
  validates_numericality_of :degree5, :only_integer => true, :greater_than => :degree4, :message =>'Значение не может быть меньше чем оценка за 4'
  belongs_to :configuration_type
  has_many :configthemerelations,:dependent => :destroy
  has_many :themes,:through=>:configthemerelations
  has_many :testsessions

end
