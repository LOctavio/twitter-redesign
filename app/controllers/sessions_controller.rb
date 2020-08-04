class SessionsController < ApplicationController
    def new; end
    
    def create
        if @user = User.find_by(username: params[:session][:username])
            session[:current_user_id] = @user.id
            redirect_to root_url
        end
    end

    def destroy
        session.destroy
        redirect_to root_url
    end
end
