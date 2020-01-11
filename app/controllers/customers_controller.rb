class CustomersController < ApplicationController

  def show
    @customer = current_customer
  end

  def edit
  end

  def update
  end

  def withdraw
  end

  def destory
  end

private
  def customer_params
    params.require(:customer).permit(:first_name, :family_name, :family_name_kana, :family_name_kana, :email, :address, :tel, :post_number)
  end
end
