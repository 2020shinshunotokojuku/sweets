class Admin::ItemsController < ApplicationController

  def top
  end

  def index
    @items=Item.where(genre_id: true)
  end

  def new
  	@item=Item.new
  end
  def create
    item=Item.new(item_params)
    if item.save
    redirect_to admin_item_path(item.id)
  else
    @item=Item.new
    render :new
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
