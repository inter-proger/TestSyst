class CreateTestsessions < ActiveRecord::Migration
  def self.up
    create_table :testsessions do |t|
      t.references :user
      t.references :tconfiguration

      t.timestamps
    end
  end

  def self.down
    drop_table :testsessions
  end
end
