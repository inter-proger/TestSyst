class AddFieldsToUser < ActiveRecord::Migration
  def self.up

    add_column :users,:F,:string
    add_column :users,:I,:string
    add_column :users,:O,:string
    add_column :users,:Sex,:boolean
    add_column :users,:Birth,:date
    add_column :users, :workplace,:string
    add_column :users,:proff,:string
      change_table :users do |u|
      u.references :sertype
      u.references :sphere
      u.references :education
      u.references :serlevel
    end
  end

  def self.down

      remove_columns(:users,:sertype_id,:sphere_id,:education_id,:serlevel_id,:proff,:workplace,:Birth,:Sex,:O,:I,:F)


  end
end
