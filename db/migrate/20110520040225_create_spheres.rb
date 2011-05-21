class CreateSpheres < ActiveRecord::Migration
  def self.up
    create_table :spheres do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :spheres
  end
end
