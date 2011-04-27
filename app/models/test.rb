class Test < ActiveRecord::Base
  belongs_to :testsession
  belongs_to :question
end
