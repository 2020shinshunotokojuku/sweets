class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
   	   #customer_path(current_customer)
  end

  def after_sign_up_path_for(resource)
   	   #root_path
  end
end
