class AddUserIdToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :user_id, :integer
    change_column :posts, :user_id, :integer, null: false
    add_foreign_key :posts, :users
  end
end
