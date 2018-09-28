class UsersController < ApplicationController
    def show
        @quiz=Quiz.where(user_id: current_user.id).order("created_at DESC").page(params[:page]).per(5)
        @stars=Star.where(user_id: current_user.id)
    end    
end
