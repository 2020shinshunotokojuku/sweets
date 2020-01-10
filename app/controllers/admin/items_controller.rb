class Admin::ItemsController < ApplicationController

  def top
  end

  def index
    @genre=Genre.new
  end

  def new
  	@item=Item.new
  end

  def edit
  end

  private
  def  item_params
  params.require(:item).permit(:item_name, :dess_item, )
  end

end
