class History < ApplicationRecord
	belongs_to :customer
	has_many :history_details, dependent: :destroy


enum order_status: [['nyuukinnmati', 0], ['nyuukinnmati', 1], ['zyunbityuu', 2],['hassouzumi', 3]]

	enum payment_method: { クレジットカード: 1, 銀行振込: 2 }

end
