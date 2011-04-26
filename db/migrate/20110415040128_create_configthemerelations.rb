class CreateConfigthemerelations < ActiveRecord::Migration
  def self.up
    create_table :configthemerelations do |t|
      t.references :tconfiguration
      t.references :theme

      t.timestamps
    end
  end

  def self.down
    drop_table :configthemerelations
  end
end
