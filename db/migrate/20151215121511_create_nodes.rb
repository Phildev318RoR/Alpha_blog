class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
       t.integer :node_type
       t.string :node_name
       t.integer :site_id
       t.boolean :downloaded

       t.timestamps
    end
  end
end
