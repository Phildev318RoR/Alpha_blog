class AddUserIdToArticles < ActiveRecord::Migration
  def change_column
    add_column :articles, :user_id, :integer
  end
end
