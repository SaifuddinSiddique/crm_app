class ApplicationController < ActionController::Base
    
    protect_from_forgery with: :exception

    rescue_from CanCan::AccessDenied do |exception|
        flash[:alert] = "You are not authorized to perform this action."
        redirect_to root_path # or any fallback page
    end 
     
    def after_sign_in_path_for(resource)
      if resource.is_a?(AdminUser)
        admin_root_path # This still works because ActiveAdmin defines it
      else
        user_root_path # Redirects standard users
      end
    end

    def after_sign_out_path_for(resource_or_scope)
        new_user_session_path # Redirect to sign-in page after logout
    end
end
  