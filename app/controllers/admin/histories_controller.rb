class Admin::HistoriesController < ApplicationController

	def index
		@histories = History.page(params[:page]).reverse_order
	end

	def show
		# ある１件の履歴データを取ってきてる
		@history = History.find(params[:id])
		# 全件の履歴データを取得
		@histories = History.all
	end

end

