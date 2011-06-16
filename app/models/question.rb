class Question < ActiveRecord::Base
  validates :content, :presence   => true
                    
  belongs_to :qtype
  belongs_to :theme
  has_many :answers,:dependent => :destroy
  has_many :pictures
end
