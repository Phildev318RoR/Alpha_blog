class CreateCommsEmails < ActiveRecord::Migration
  def change
    create_table :comms_emails do |t|
       t.string :name
       t.string :email
       t.boolean :downloaded

       t.timestamps
    end
  end
end
