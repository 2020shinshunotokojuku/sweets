class CustomersController < ApplicationController

  def show
    @customer = current_customer
  end

  def edit
    @customer = current_customer
  end

  def update
     customer = Customer.find(current_customer.id)
     customer.update(customer_params)
     redirect_to root_path
  end

  def withdraw
  end

  def destory
    @customer = current_customer
    @customer.destroy
    redirect_to root_path
  end

private
  def customer_params
    params.require(:customer).permit(:first_name, :family_name, :family_name_kana, :family_name_kana, :email, :address, :tel, :post_number)
  end
end
