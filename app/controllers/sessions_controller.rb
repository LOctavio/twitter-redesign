class SessionsController < ApplicationController
    include SessionsHelper

    def new; end
    
    def create
        if @user = User.find_by(username: params[:session][:username])
            log_in(@user)
            redirect_to root_url
        end
    end

    def destroy
        session.destroy
        redirect_to root_url
    end
end
