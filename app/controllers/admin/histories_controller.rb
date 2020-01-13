class Admins::HistoriesController < ApplicationController

	def index
		@histories = History.all
	end

	def show
	end

	def update
	end

end
