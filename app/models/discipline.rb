# coding: utf-8
class Discipline < ActiveRecord::Base
  has_many :themes
  has_many :questions,:through => :themes

  validates :title, :length => {:within => 3..150,:message=>'Длина названия дожна быть от 3 до 150 символов'}
  validates_uniqueness_of  :title, :message=>'Дисциплина с таким названием уже существует'

end
