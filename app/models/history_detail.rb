class HistoryDetail < ApplicationRecord
	belongs_to :item
	belongs_to :history

	enum production_status: [['tyakushuhuka', 0], ['seisakumati', 1], ['seisakutyuu', 2],['seisakukanryou', 3]]
end
