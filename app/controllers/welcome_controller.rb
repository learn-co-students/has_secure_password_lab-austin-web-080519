class WelcomeController < ApplicationController
    before_action :require_logged_in
    def home
    end

    def must_be_logged_in
        @user = (User.find_by(session[:user_id]) || User.new)
        return redirect_to login_path unless current_user.id != nil
    end
end