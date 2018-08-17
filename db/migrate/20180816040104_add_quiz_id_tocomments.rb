class AddQuizIdTocomments < ActiveRecord::Migration
  def change
    add_column :comments, :quiz_id, :text
  end
end
