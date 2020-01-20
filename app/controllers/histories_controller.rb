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
    # ------------------「注文情報入力」------------------

    @history = History.new(address_params)

    # 下記にifを書いていく
    if params[:selected_address] == "ご自身の住所"
    # 「ご自身の住所」を選択した場合
      @history.address = current_customer.address
      @history.post_number = current_customer.post_number
      @history.name = current_customer.family_name + current_customer.first_name

    elsif params[:selected_address] == "登録済み住所から選択"
    # 「登録済みの住所」を選択した場合
    # 下記はShippingAddressテーブルの情報全てを持ってきているイメージ
    # ShippingAddress.find(params[:shipping_addresses][:id])はrails consoleの"shipping_addresses"=>{"id"=>"1"}を指定している
    # (上記の続き)「=>」は階層を表している それが、[:shipping_addresses][:id]の部分


    # 下記をログインユーザーが登録した住所しか選べないようにする
      shipping_address = ShippingAddress.find(params[:shipping_addresses][:id])
      @history.address = shipping_address.address
      @history.post_number = shipping_address.post_number
      @history.name = shipping_address.name

    else
    # 「新しいお届け先」を選択した場合
    @shipping = ShippingAddress.new(shipping_params)

    end

    # ------------------「注文情報入力」------------------

    # ------------------「注文情報確認」------------------

    @item_informations = current_customer.cart_contents
    @history.history_details.new

    # ------------------「注文情報確認」------------------
  end

  # 下記をeach
  # history_detailsの商品情報を購入商品単位分だけ保存したいため、eachを使う
  def create
    # 下記に情報をセーブする
    @history = current_customer.histories.new(history_params)

    # セーブすると、HistoryDetailテーブルのhistory_idが取得できる
    # セーブが成功したら、ログイン中のユーザーのカートを全削除する
    if @history.save
      current_customer.cart_contents.destroy_all
    end
    # ここで商品の
    # @history_detail = HistoryDetail.new


    redirect_to thanks_histories_path
  end

  def thanks
  end

  def index
    @customer = current_customer
    @histories = @customer.histories
  end

  def show
    @history = History.find(params[:id])
    @history_detail = @history.history_details
  end

  def update
  end



  private
    def address_params
      params.require(:history).permit(:payment_method, :address, :name, :post_number)
    end

    def shipping_params
      params.require(:history).permit(:address, :name, :post_number)
    end

    def history_params
      params.require(:history).permit(:total_fee, :postage, :post_number, :address, :payment_method, :product_total, :name, history_details_attributes:[:item_id, :quantity, :price, :id, :_destroy])
    end

end