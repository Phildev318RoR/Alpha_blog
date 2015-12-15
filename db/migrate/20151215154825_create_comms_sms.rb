class CreateCommsSms < ActiveRecord::Migration
  def change
    create_table :comms_sms do |t|
       t.string :name
       t.string :mobile
       t.boolean :downloaded

       t.timestamps
    end
  end
end
