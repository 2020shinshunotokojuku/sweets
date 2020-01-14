class ItemsController < ApplicationController 

  def index
  	if params[:id]
	  	@items = Item.where(genre_id: params[:id].to_i)
	  	@genre = Genre.find(params[:id])
	  else
	  	@items = Item.all
	  end
	  @genres = Genre.all
  end

  def show
  	@item = Item.find(params[:id])
  end

  def top
  	@items = Item.all
  	@genres = Genre.all
  end

  def about
  end



  private

  def item_params
  	params.require(:item).permit(:image, :item_name, :dess_item, :without_tax)
  end

end
