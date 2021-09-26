class ApplicationController < ActionController::Base
    def authorize_admin!
        unless current_user.admin?
        flash.alert = "no eres admin"
        redirect_to root_path
        end
    end
end
