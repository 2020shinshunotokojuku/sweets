class HistoriesController < ApplicationController
  def information
    @history = History.new

    # 下記は「支払い方法」「お届け先」カラム
    @payment_method = History.new
    @shipping_address = ShippingAddress.new

    # 下記は、ログインユーザーの「住所」カラム
    @customer = current_customer


  end

  def really
    @history = History.new(adress_params)

    # 下記にifを書いていく
    if params[:selected_address] == "ご自身の住所"
    # 「ご自身の住所」を選択した場合
      @history.address = current_customer.address
      @history.post_number = current_customer.post_number
      @history.family_name = current_customer.family_name
      @history.first_name = current_customer.first_name

    elsif params[:selected_address] == "登録済み住所から選択"
    # 「登録済みの住所」を選択した場合
    # 下記はShippingAddressテーブルの情報全てを持ってきているイメージ
    # ShippingAddress.find(params[:shipping_addresses][:id])はrails consoleの"shipping_addresses"=>{"id"=>"1"}を指定している
    # (上記の続き)「=>」は階層を表している それが、[:shipping_addresses][:id]の部分
      shipping_address = ShippingAddress.find(params[:shipping_addresses][:id])
      @history.address = shipping_address.address
      @history.post_number = shipping_address.post_number
      @history.name = shipping_address.name

    else
    # 「新しいお届け先」を選択した場合
    @shipping = ShippingAddress.new(shipping_params)

    end
  end

  def create
  end

  def thanks
  end

  def index
    @customer = current_customer
    @histories = @customer.histories
    @history_details = @histories.history_details
  end

  def show
    @history = History.find(params[:id])
    @history_detail = @history.history_details
    @cart_items = current_customer.cart_contents
  end

  def thanks
  end

  def update
    # 下記はreallyにコピペした
    #  @history = History.new(adress_params)

    # # 下記にifを書いていく
    # if params[:selected_address] == "ご自身の住所"
    # # 「ご自身の住所」を選択した場合
    #   @history.address = current_customers.address
    #   @history.post_number = current_customers.post_number
    #   @history.name = current_customers.name

    # elsif params[:selected_address] == "登録済み住所から選択"
    # # 「登録済みの住所」を選択した場合
    # # 下記はShippingAddressテーブルの情報全てを持ってきているイメージ
    # # ShippingAddress.find(params[:shipping_addresses][:id])はrails consoleの"shipping_addresses"=>{"id"=>"1"}を指定している
    # # (上記の続き)「=>」は階層を表している それが、[:shipping_addresses][:id]の部分
    #   shipping_address = ShippingAddress.find(params[:shipping_addresses][:id])
    #   @history.address = shipping_address.address
    #   @history.post_number = shipping_address.post_number
    #   @history.name = shipping_address.name

    # else
    # # 「新しいお届け先」を選択した場合
    # @shipping_address = ShippingAddress.new(shipping_params)

    # end

    # # renderはストロングパラメータ(params)を引き継げる
    # render 'really'

  end



  private
    def adress_params
      params.require(:history).permit(:payment_method, :address, :name, :post_number)
    end

    def shipping_params
      params.require(:history).permit(:address, :name, :post_number)
    end

end
