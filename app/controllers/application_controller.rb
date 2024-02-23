class ApplicationController < ActionController::Base
    # protect_from_forgery with: :exception

    # before_action :configure_permitted_parameters, if: :devise_controller?

    # protected
    # def configure_permitted_parameters
    #     devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    #     devise_parameter_sanitizer.permit(:sign_in, keys: [:name])

    #     # added_attrs = [:user_name, :email, :password, :password_confirmation, :remember_me]
    #     # devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    #     # devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    # end

    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    def after_sign_in_path_for(resource)
        courses_mypageRecommend_path
    end
    
    def after_sign_out_path_for(resource)
        courses_siteTop_path
    end

    protected

    def configure_permitted_parameters
        added_attrs = [:user_name, :email, :password, :password_confirmation, :remember_me]
        devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
        devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    end
end
