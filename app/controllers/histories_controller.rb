class HistoriesController < ApplicationController
  def information
  end

  def really
  end

  def create
  end

  def thanks
  end

  def index
    @customer = current_customer
    @histories = @customer.histories
    @history_details = @histories.history_details
  end

  def show
    @history = History.find(params[:id])
    @history_detail = @history.history_details
    @cart_items = current_customer.cart_contents
  end

  def thanks
  end

end
