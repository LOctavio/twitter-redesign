module SessionsHelper

    private

    def require_login
        unless logged_in?
          flash[:error] = "You must be logged in to access this section"
          redirect_to login_path # halts request cycle
        end
    end

    def logged_in?
        @current_user = User.find_by_id(session[:current_user_id])
        !@current_user.nil?
    end

    def log_in(user)
        session[:current_user_id] = user.id
    end
end
