class CreateWorkflows < ActiveRecord::Migration
  def change
    create_table :workflows do |t|
       t.string :name
       t.string :description
       t.integer :group_rule_id
       t.integer :valid_comms_id
       t.string :valid_comms_message
       t.integer :invalid_comms_id
       t.string :invalid_comms_message
       t.boolean :downloaded

       t.timestamps
    end
  end
end
