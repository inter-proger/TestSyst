# coding: utf-8
class Theme < ActiveRecord::Base
  belongs_to :discipline
  has_many :questions
  has_many :configthemerelations,:dependent => :destroy
  validates :title, :length => {:within => 3..150,:message=>'Длина названия дожна быть от 3 до 150 символов'}
  validates_uniqueness_of  :title, :message=>'Тема с таким названием уже существует'
end
