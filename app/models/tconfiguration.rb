class Tconfiguration < ActiveRecord::Base
  validates_presence_of :Name,:qT1Count,:qT2Count,:qT3Count,:qT4Count, :qT5Count,:degree3,:degree4,:degree5
  validates_uniqueness_of :Name, :message =>'Конфигурация с таким именем уже существует'
  validates_numericality_of :qT1Count,:only_integer => true, :greater_than => 0,:less_than_or_equal_to =>  Question.where("qtype_id= 6").count #Закрытый с одним вариантом
  validates_numericality_of :qT2Count, :only_integer => true, :greater_than => 0,:less_than_or_equal_to =>   Question.where("qtype_id= 7").count #Закрытый с несколькими вариантами
  validates_numericality_of :qT3Count, :only_integer => true, :greater_than => 0,:less_than_or_equal_to =>   Question.where("qtype_id= 8").count # Открытый вопрос
  validates_numericality_of :qT4Count, :only_integer => true, :greater_than => 0,:less_than_or_equal_to =>  Question.where("qtype_id= 9").count # На соотношение
  validates_numericality_of :qT5Count, :only_integer => true, :greater_than => 0,:less_than_or_equal_to =>   Question.where("qtype_id= 10").count # На упорядочивание
  
  validates_numericality_of :degree3, :only_integer => true
  validates_numericality_of :degree4, :only_integer => true, :greater_than => :degree3, :message =>'Значение не может быть меньше чем оценка за 3'
  validates_numericality_of :degree5, :only_integer => true, :greater_than => :degree4, :message =>'Значение не может быть меньше чем оценка за 4'
  belongs_to :configuration_type
    
end
