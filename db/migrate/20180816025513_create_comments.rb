class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.text :text
      t.text :user_id
      t.timestamps null: false
    end
  end
end
