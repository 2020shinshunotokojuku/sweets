class Admin::HistoriesController < ApplicationController

	def index
		if request.url.include?("admin/customers/:id")
		 @histories = Customer.histories.all
		 elsif request.referer&.include?("admin/top")
		range = Date.yesterday.begining_of_day..Date.yesterday.end_of_day
		@histories = History.where(created_at. range)
		 else
		@histories = History.page(params[:page]).reverse_order
		 end
	end

	def show
		# ある１件の履歴データを取ってきてる
		@history = History.find(params[:id])
		# 全件の履歴データを取得
		@histories = History.all
	end

end

