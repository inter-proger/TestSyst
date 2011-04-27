class Configthemerelation < ActiveRecord::Base
  belongs_to :tconfiguration
  belongs_to :theme
end
