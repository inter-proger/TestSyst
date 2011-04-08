class CreateTconfigurations < ActiveRecord::Migration
  def self.up
    create_table :tconfigurations do |t|
      t.string :Name
      t.integer :confType
      t.integer :qT1Count
      t.integer :qT2Count
      t.integer :qT3Count
      t.integer :qT4Count
      t.integer :qT5Count
      t.integer :degree3
      t.integer :degree4
      t.integer :degree5
      t.time :TestTime

      t.timestamps
    end
  end

  def self.down
    drop_table :tconfigurations
  end
end
