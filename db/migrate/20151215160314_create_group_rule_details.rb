class CreateGroupRuleDetails < ActiveRecord::Migration
  def change
    create_table :group_rule_details do |t|
      t.integer :group_rule_id
      t.integer :rule_id
      t.boolean :downloaded

      t.timestamps
    end
  end
end
