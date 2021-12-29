module ApplicationHelper
    def logged?
        !!session[:user_id]
    end
    
    def current_user
        @current_user ||= User.find_by_email(session[:user_id]) if !!session[:user_id]
    end
end
