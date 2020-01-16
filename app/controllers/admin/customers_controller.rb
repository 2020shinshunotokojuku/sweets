class Admin::CustomersController < ApplicationController

  def index
	 @customers=Customer.with_deleted.all
  end

  def show
	    @customer=Customer.with_deleted.find(params[:id])
  end

  def edit
  	@customer=Customer.with_deleted.find(params[:id])
    pp @customer
  end
  def update
	   customer=Customer.with_deleted.find(params[:id])
	   if params[:customer][:deleted_at] == "true"
	   customer.update(customer_params)
     customer.restore
	   redirect_to admin_customer_path(customer.id)
	else
		customer.update(customer_params)
     customer.destroy
		redirect_to admin_customer_path(customer.id)
  end
end
  private
  def customer_params
    params.require(:customer).permit(:first_name, :family_name, :family_name_kana, :family_name_kana, :email, :address, :tel, :post_number,:deleted_at)
  end

end
