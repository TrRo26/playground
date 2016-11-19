class CreatePosts < ActiveRecord::Migration
  def change
    create_table :post do |t|
      t.string :title, null: false, unique: true
      t.string :body, null: false
      t.integer :user_id

      t.timestamps(null:false)
    end
  end
end
