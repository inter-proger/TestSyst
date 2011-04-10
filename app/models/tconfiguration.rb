class Tconfiguration < ActiveRecord::Base
  validates_presence_of :Name,:qT1Count,:qT2Count,:qT3Count,:qT4Count, :qT5Count,:degree3,:degree4,:degree5
  validates_uniqueness_of :Name, :message =>'Конфигурация с таким именем уже существует'
  validates_numericality_of :qT1Count,:qT2Count, :qT3Count, :qT4Count, :qT5Count, :only_integer => true, :greater_than => 0
  validates_numericality_of :degree3, :only_integer => true
  validates_numericality_of :degree4, :only_integer => true, :greater_than => :degree3, :message =>'Значение не может быть меньше чем оценка за 3'
  validates_numericality_of :degree5, :only_integer => true, :greater_than => :degree4
  belongs_to :configutaion_type
end
