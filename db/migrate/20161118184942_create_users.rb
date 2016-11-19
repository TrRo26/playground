class CreateUsers < ActiveRecord::Migration
  def change
    create_table :user do |t|
      t.string :username, null: false, unique: true
      t.string :email, null: false, unique: true
      t.string :password_hash

      t.timestamps(null: false)
    end
  end
end
