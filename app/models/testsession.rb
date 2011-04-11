class Testsession < ActiveRecord::Base
  belongs_to :users
  belongs_to :tconfiguration
end
