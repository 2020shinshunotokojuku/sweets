class Admin::HistoriesController < ApplicationController

	def index
		# もし注文履歴が該当顧客以外なら
		if request.url.include?("admin/customers/:id")
			@histories = Customer.histories.all
		# 当日顧客の注文履歴以外なら
		 elsif request.referer&.include?("admin/top")
			range = Date.yesterday.beginning_of_day..Date.yesterday.end_of_day
			@histories = History.where(created_at: range).page(params[:page]).reverse_order
		 else
		 # 全顧客の注文履歴を出力する
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

