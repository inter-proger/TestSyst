class Discipline < ActiveRecord::Base
  has_many :themes
  validates :title, :length => {:within => 3..150},
            :uniqueness => true

end
