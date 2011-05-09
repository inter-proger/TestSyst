class Testsession < ActiveRecord::Base
  belongs_to :user
  belongs_to :tconfiguration
  has_many :tests
  has_many :questions, :through =>:tests
end
