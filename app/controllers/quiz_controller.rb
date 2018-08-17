class QuizController < ApplicationController
    def index
        @quiz=Quiz.all
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
    end
    
    def create
        Quiz.create(img: params[:img], text: params[:text], ans: params[:ans])
    end
    
    def answer
        @user_ans =params[:user_ans]
        @answer =Quiz.find(params[:id])
        @quiz =Quiz.find(params[:id])
    end
end
