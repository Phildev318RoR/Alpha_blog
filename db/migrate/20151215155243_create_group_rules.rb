class CreateGroupRules < ActiveRecord::Migration
  def change
    create_table :group_rules do |t|
       t.integer :site_id
       t.string :name
       t.string :description
       t.boolean :downloaded

       t.timestamps
    end
  end
end
