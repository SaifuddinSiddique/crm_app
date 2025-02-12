class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    
    def after_sign_in_path_for(resource)
        if resource.is_a?(AdminUser)
          admin_root_path  # Redirects AdminUser to ActiveAdmin dashboard
        else
          root_path  # Change this if you have another dashboard for regular users
        end
    end
end
