class TweetsController < ApplicationController

    def index 
        @tweets = User.find(session[:user_id]).tweets
    end

    def show
        @tweet = tweet.find(params[:id])
    end

    def new 
        @tweet = Tweet.new
    end
    
    def create
        @tweet = Tweet.new(content: params[:tweet][:content],user_id:  session[:user_id] )
        @tweet.save
        redirect_to tweets_path
    end

    private 

    def tweet_params
        params.require(:tweet).permit(:tweet)
    end
end
