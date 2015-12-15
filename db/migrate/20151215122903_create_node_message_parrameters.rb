class CreateNodeMessageParrameters < ActiveRecord::Migration
  def change
    create_table :node_message_parrameters do |t|
       t.integer :node_messages_id
       t.integer :value_type
       t.string  :value_length
       t.integer :value_index
       t.boolean :downloaded
       t.timestamps
    end
  end
end
