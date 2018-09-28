class StarsController < ApplicationController
    
    
    def create
        @star=Quiz.find(params[:quiz_id])
        Star.create(user_id: @star.user_id, quiz_id: params[:quiz_id])
        redirect_to  "/quiz/#{params[:quiz_id]}/nummber" 
        
    end
end
