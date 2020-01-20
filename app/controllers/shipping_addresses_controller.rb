class ShippingAddressesController < ApplicationController 
  # 空のインスタンス変数をviewに渡す(新規配送先情報を入れるための)
  def index
    @shipping_address = ShippingAddress.new
    @shipping_addresses = ShippingAddress.all
  end

  def destroy
    # 下記でデータ(レコード)を1件取得
    shipping_address = ShippingAddress.find(params[:id])
    # データ(レコード)を削除
    shipping_address.destroy
    # 「配送先一覧」ページにリダイレクトする
    redirect_to '/shipping_addresses'
  end

  # 下記は、配送先の新規登録アクションを定義
  def create
    # ストロングパラメーターを使用
    shipping_address = ShippingAddress.new(ship_params)
    shipping_address.customer_id = current_customer.id
    # DBへ保存する
    shipping_address.save
    # トップ画面へリダイレクト
    redirect_to '/shipping_addresses'
  end

  # 登録済みの配送先情報をインスタンス変数に代入する
  def edit
    @shipping_address = ShippingAddress.find(params[:id])
  end

  # 登録済みの情報を編集後、更新する
  def update
    shipping_address = ShippingAddress.find(params[:id])
    # shipping_address.update(shipping_address_params)
    shipping_address.update(ship_params)
    # 「配送先一覧」ページにリダイレクトする
    redirect_to '/shipping_addresses'
  end



  private
  # 下記は「配送先の新規登録」「配送先の編集」内での制限を記載
  def ship_params
    params.require(:shipping_address).permit(:post_number, :address, :name, :relationship)
  end

end
