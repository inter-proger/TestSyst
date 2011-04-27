class AddCompletedToTestsessions < ActiveRecord::Migration
  def self.up
    add_column :testsessions,:completed,:integer
  end

  def self.down
    remove_column :testsessions,:completed
  end
end
