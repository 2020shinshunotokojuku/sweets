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
    @histories = History.all
  end

  def show
  end
end
