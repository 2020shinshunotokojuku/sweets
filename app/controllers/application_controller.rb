class ApplicationController < ActionController::Base
  before_action :authenticate_admin!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
  	if admin_signed_in?
       admin_items_top_path
    else
       root_path
    end
  end

  def after_sign_up_path_for(resource)
   	  if admin_signed_up?
   	  	admin_top_path
   	  else
   	  	root_path
   	  end
  end

 protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,  keys: [:email,:first_name,:family_name,:first_name_kana, :family_name_kana, :email, :address, :tel, :post_number])
    #devise_parameter_sanitizer.permit(:sign_in,  keys: [:password])
  end
end