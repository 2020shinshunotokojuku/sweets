class ItemsController < ApplicationController 

  def index
  	# @items = Item.all
  	# @item_names = Item.select("item_name")
  	# @without_taxs = Item.select("without_tax")
  	@items = Item.all
  end

  def show
  end

  def top
  end

  private

  # def items_params
  # 	params.require(:items).permit(:item_name, :without_tax)
  # end

end
