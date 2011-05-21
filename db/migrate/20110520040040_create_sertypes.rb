class CreateSertypes < ActiveRecord::Migration
  def self.up
    create_table :sertypes do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :sertypes
  end
end
