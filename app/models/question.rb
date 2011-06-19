# coding: utf-8
class Question < ActiveRecord::Base
  validates_presence_of :content, :message=>"Формулировка вопроса не может быть пустой."
                    
  belongs_to :qtype
  belongs_to :theme
  has_many :answers,:dependent => :destroy
  has_many :pictures
end
