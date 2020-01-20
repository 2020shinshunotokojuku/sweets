class History < ApplicationRecord
	belongs_to :customer
	has_many :history_details, dependent: :destroy


enum order_status: [['入金待ち', 0], ['入金確認', 1], ['製作中', 2],["発送準備中", 3],["発送済み",4]]

	enum payment_method: { クレジットカード: 1, 銀行振込: 2 }

end
