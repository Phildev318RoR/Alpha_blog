class CreateCommsRuleDetails < ActiveRecord::Migration
  def change
    create_table :comms_rule_details do |t|
       t.integer :comms_rules_id
       t.integer :comms_types_id
       t.integer :comms_id
       t.boolean :downloaded

       t.timestamps
    end
  end
end
