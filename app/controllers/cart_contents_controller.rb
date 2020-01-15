class CartContentsController < ApplicationController

  def index
    @cart_contents = current_customer.cart_contents
  end

  def update
  end

  def destroy
    # 下記でデータ(レコード)を1件取得
    quantity = CartContents.find(params[:id])
    # データ(レコード)を削除
    quantity.destroy
    # 「カート」ページにリダイレクトする
    redirect_to '/cart_contents'
  end

  def all_destroy
  end

end
