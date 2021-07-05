class CartContentsController < ApplicationController 

  def index
    @cart_contents = current_customer.cart_contents
  end

  def update
    @cart_contents = CartContent.find(params[:id])
    @cart_contents.update(cart_contents_params)
    redirect_to cart_contents_path
  end

  def destroy
    # 下記でデータ(レコード)を1件取得
    @cart_contents = CartContent.find(params[:id])
    # データ(レコード)を削除
    @cart_contents.destroy
    # 「カート」ページにリダイレクトする
    redirect_to cart_contents_path
  end

  def all_destroy
    current_customer.cart_contents.destroy_all
    redirect_to root_path
  end

  def create
  end

  private
  def cart_contents_params
    params.require( :cart_content).permit( :quantity)
  end


end
