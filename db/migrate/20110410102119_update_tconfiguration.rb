class UpdateTconfiguration < ActiveRecord::Migration
  def self.up
    change_table :tconfigurations do |t|
      t.references :configuration_type
      t.remove :confType
    end
  end

  def self.down
    change_table :tconfigurations do |t|
    
      t.remove :configuration_type_id
     
    end
  end
end
