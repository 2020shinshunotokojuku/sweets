class ItemsController < ApplicationController

  def index

  	if params[:id]
	  	@items = Item.where(genre_id: params[:id].to_i)
	  	@genre = Genre.find(params[:id])
	  else
  	  @search = Item.ransack(params[:q])
      @items = @search.result
	  end
	    @genres = Genre.all

  end

  def show
  	@item = Item.find(params[:id])
  	@genres = Genre.all

    # 下記でカートに追加する個数を決める
    # @quantity = CartContents.find(params[:id])
    @quantity = CartContent.new
    # @quantities = CartContent.all
  end

  def top
  	@items = Item.all
  	@genres = Genre.all
  end

  def about
  	@genres = Genre.all
  end

  # 下記は「カートに追加する」を押されたら、「カート」に遷移するアクションを定義
  def create
    # ストロングパラメーターを使用
    cart_content = CartContent.new(cart_contents_params)
    cart_content.customer_id = current_customer.id
    # DBへ保存する
    cart_content.save
    # トップ画面へリダイレクト
    redirect_to '/cart_contents'
  end


  private

  def item_params
  	params.require(:item).permit(:image, :item_name, :dess_item, :without_tax)
  end

  def cart_contents_params
    params.require(:cart_content).permit(:quantity, :item_id)
  end



end
