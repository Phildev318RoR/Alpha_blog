class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.string :description
      t.string :contact_person
      t.string :contact_phone
      t.string :address1
      t.string :address2
      t.string :address3
      t.boolean :downloaded
      t.integer :parent_id
      t.timestamps
    end
  end
end
