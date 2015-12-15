class CreateCommsWebServices < ActiveRecord::Migration
  def change
    create_table :comms_web_services do |t|
       t.string :name
       t.string :service
       t.boolean :downloaded

       t.timestamps
    end
  end
end
