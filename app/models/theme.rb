# coding: utf-8
class Theme < ActiveRecord::Base
  belongs_to :discipline
  has_many :questions
end
