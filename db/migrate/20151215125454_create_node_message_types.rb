class CreateNodeMessageTypes < ActiveRecord::Migration
  def change
    create_table :node_message_types do |t|
       t.string :name
       t.string :description
       t.boolean :downloaded
       t.timestamps
    end
  end
end
