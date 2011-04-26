# coding: utf-8
class Theme < ActiveRecord::Base
  belongs_to :discipline
  has_many :questions
  has_many :configthemerelations,:dependent => :destroy
end
