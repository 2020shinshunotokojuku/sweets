class HistoryDetail < ApplicationRecord
	belongs_to :item
	belongs_to :history

	enum lproduction_status: [['着手不可',""], ['製作待ち', 1], ['製作中', 2],['製作完了', 3]]
end
