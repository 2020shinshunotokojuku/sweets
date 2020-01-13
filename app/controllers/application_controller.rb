class ApplicationController < ActionController::Base


  def after_sign_in_path_for(resource)
	admins_top_path
  end

  # def after_sign_up_path_for(resource)
  #  	   #root_path
  # end

  before_action :configure_permitted_parameters, if: :devise_controller?

 protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,  keys: [:email,:first_name,:family_name,:first_name_kana, :family_name_kana, :email, :address, :tel, :post_number])
    #devise_parameter_sanitizer.permit(:sign_in,  keys: [:password])
  end
end
