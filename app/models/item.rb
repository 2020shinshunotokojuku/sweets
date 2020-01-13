class Item < ApplicationRecord
	belongs_to :genre
	has_many :cart_contents, dependent: :destroy
	has_many :history_details ,dependent: :destroy
	attachment :image_id
end
