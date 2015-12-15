class CreateCommsRules < ActiveRecord::Migration
  def change
    create_table :comms_rules do |t|
       t.string :name
       t.string :description
       t.integer :site_id
       t.boolean :downloaded

       t.timestamps
    end
  end
end
