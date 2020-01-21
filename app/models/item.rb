class Item < ApplicationRecord
	belongs_to :genre
	has_many :cart_contents, dependent: :destroy
	has_many :history_details ,dependent: :destroy
	attachment :image
	validates :item_name, presence: :true
	validates :without_tax, presence: :true

	has_many :line_items, dependent: :destroy


end
