class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false, limit: 200
      t.text :body, null: false, limit: 20000

      t.timestamps
    end
  end
end
