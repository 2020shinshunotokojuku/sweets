class Admin::ItemsController < ApplicationController

  def top
    range=Date.today.beginning_of_day..Date.today.end_of_day
    @historys=History.where(created_at: range)
  end

  def index
    @items=Item.includes(:genre).where(genres:{is_valid: true}).page(params[:page]).all
  end

  def new
  	@item=Item.new
  end
  def create
    item=Item.new(item_params)
    # binding.pry
    # リダイレクト先が存在しないパスに跳ぼうとしている
    # 画像がうまく格納できていない
    if item.save
    redirect_to admin_item_path(item.id)
  else
  end
  end
  def show
    @item=Item.find(params[:id])
  end

  def edit
    # binding.pry
    @item=Item.find(params[:id])
  end
  def update
    item=Item.find(params[:id])
    item.update(item_params)
    redirect_to admin_item_path(item.id)
  end

  private
  def  item_params
  params.require(:item).permit(:item_name, :dess_item, :image, :is_sale, :genre_id, :without_tax )
  end
end
