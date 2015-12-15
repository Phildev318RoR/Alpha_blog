class CreateCommsTypes < ActiveRecord::Migration
  def change
    create_table :comms_types do |t|
       t.string :name
       t.string :description
       t.boolean :downloaded

       t.timestamps
    end
  end
end
