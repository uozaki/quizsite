class AddIntroductionToQuiz < ActiveRecord::Migration
  def change
    add_column :quizzes, :genre, :int
  end
end
