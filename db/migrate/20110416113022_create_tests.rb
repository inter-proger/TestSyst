class CreateTests < ActiveRecord::Migration
  def self.up
    create_table :tests do |t|
      t.references :testsession
      t.references :question
      t.string :useransw
      t.string :answorder
      t.integer :ok

      t.timestamps
    end
  end

  def self.down
    drop_table :tests
  end
end
