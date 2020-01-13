class History < ApplicationRecord
	belongs_to :customer
	has_many :history_details dependent: :destroy
end
