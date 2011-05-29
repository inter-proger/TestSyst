class AddFieldToTestsession < ActiveRecord::Migration
  def self.up
    add_column :testsessions,:mark,:integer
    add_column :testsessions,:percent,:float
  end

  def self.down
    remove_columns(:testsessions,:mark,:percent)
  end
end
