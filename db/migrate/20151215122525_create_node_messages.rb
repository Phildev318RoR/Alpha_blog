class CreateNodeMessages < ActiveRecord::Migration
  def change
    create_table :node_messages do |t|
       t.integer :node_id
       t.integer :message_type_id
       t.boolean :downloaded
       t.timestamps
    end
  end
end
