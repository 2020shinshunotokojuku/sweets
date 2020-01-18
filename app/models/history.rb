class History < ApplicationRecord
	belongs_to :customer
	has_many :history_details, dependent: :destroy
	accepts_nested_attributes_for :history_details


	enum order_status: { 入金待ち: 0, 入金確認: 1, 製作中: 2, 発送準備中: 3,発送済: 4 }



	enum payment_method: { クレジットカード: 1, 銀行振込: 2 }

end
