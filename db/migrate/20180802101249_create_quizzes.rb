class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :name
      t.text :img
      t.text :text
      t.text :ans
      t.text :user_id
      t.timestamps null: false
    end
  end
end
