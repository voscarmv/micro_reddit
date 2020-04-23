class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :body, null: false, limit: 5000
      t.integer :user_id, null: false
      t.integer :post_id, null: false

      t.timestamps
    end
    add_foreign_key :comments, :users
    add_foreign_key :comments, :posts
  end
end
