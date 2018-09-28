class QuizController < ApplicationController
    def index
        @quiz=Quiz.order("created_at DESC").page(params[:page]).per(5)
      
    end    
    
    def popular
        ids=Star.group(:quiz_id).order('count_quiz_id DESC').count(:quiz_id).keys
        @quiz=ids.map{|id| Quiz.find(id)}
    end   
    
    
    def new
    end
    
    def nummber
        @quiz =Quiz.find(params[:id])
        @comments =@quiz.comments.includes(:user)
    end
    
    def show
        @img=params[:img]
        @text =params[:text]
        @ans=params[:ans]    
        @genre =params[:genre]
        
    end
    
    def create
        Quiz.create(create_params)
        
    end
    

    
    def answer
        @user_ans =params[:user_ans]
        @answer =Quiz.find(params[:id])
        @quiz =Quiz.find(params[:id])
    end
    
    def destroy 
        @quiz=Quiz.find(params[:id])
        if @quiz.user.id == current_user.id
        @quiz.destroy
        else
            puts 失敗しました。
        end
    end
    
    def edit
        @quiz=Quiz.find(params[:id])
    end
    
    def update
        @quiz=Quiz.find(params[:id])
        if @quiz.user.id == current_user.id
            @quiz.update(create_params)
        else
            失敗しました。
        end
    end
    
    def nazonazo
        @quiz=Quiz.where(genre:0).order("created_at DESC").page(params[:page]).per(5)
    end    
    
    def math
        @quiz=Quiz.where(genre:1).order("created_at DESC").page(params[:page]).per(5)
    end    
    
    def science
        @quiz=Quiz.where(genre:2).order("created_at DESC").page(params[:page]).per(5)
    end   
    
    def life
        @quiz=Quiz.where(genre:3).order("created_at DESC").page(params[:page]).per(5)
    end      

    def anime
        @quiz=Quiz.where(genre:4).order("created_at DESC").page(params[:page]).per(5)
    end       
    
    def sport
        @quiz=Quiz.where(genre:5).order("created_at DESC").page(params[:page]).per(5)
    end       
    
    def otherwise
        @quiz=Quiz.where(genre:6).order("created_at DESC").page(params[:page]).per(5)
    end  
    
    private
    def create_params
        params.permit(:img,:genre,:text,:ans,:user_id)

    end    
    
    
end
