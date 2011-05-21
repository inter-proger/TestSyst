class CreateSerlevels < ActiveRecord::Migration
  def self.up
    create_table :serlevels do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :serlevels
  end
end
