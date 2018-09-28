class CreateStars < ActiveRecord::Migration
  def change
    create_table :stars do |t|
      t.text :user_id
      t.text :quiz_id

      t.timestamps null: false
    end
  end
end
