class UsersController < ApplicationController
    include SessionsHelper
    
    def new
        @user = User.new
    end
    
    def create
        @user = User.new(user_params)
    
        if @user.save
          log_in(@user)
          redirect_to root_url
        else
          render 'new'
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :full_name)
    end
end
