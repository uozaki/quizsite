class QuizController < ApplicationController
    def index
        @quiz=Quiz.all
    end    
    
    def new
    end
    
    def number
        @quiz =Quiz.find(params[:id])
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
    end
end
