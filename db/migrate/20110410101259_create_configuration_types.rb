class CreateConfigurationTypes < ActiveRecord::Migration
  def self.up
    create_table :configuration_types do |t|
      t.string :Name

      t.timestamps
    end
  end

  def self.down
    drop_table :configuration_types
  end
end
