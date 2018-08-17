class CommentsController < ApplicationController
    def create
       @comment=Comment.create(name: params[:name],text: params[:text], quiz_id: params[:quiz_id],user_id: current_user.id) 
       redirect_to  "/quiz/#{@comment.quiz.id}/nummber" 
    end
end
