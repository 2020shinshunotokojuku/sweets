class Admin::HistoriesController < ApplicationController

	def index
		@histories = History.page(params[:page]).reverse_order
	end

	def show
		@history = History.find(params[:id])
	end

end
