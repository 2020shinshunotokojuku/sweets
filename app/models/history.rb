class History < ApplicationRecord
	belongs_to :customer
	has_many :history_details, dependent: :destroy
	accepts_nested_attributes_for :history_details

	enum payment_method: { クレジットカード: 1, 銀行振込: 2 }
end
