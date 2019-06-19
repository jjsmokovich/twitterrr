class UsersController < ApplicationController
    before_action :signed_in_user, only: [:edit, :update, :destroy, :following, :followers]
    
    def show 
       @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            log_in @user
            flash[:success] = "You are now logged in"
            redirect_to @user
          else
            render 'new'
        end
    end

    def edit
    end


    private

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end