class Post < ApplicationRecord
	belongs_to :category
	validates :title, :content, :category, presence: true
	has_many :line_items, inverse_of: :order
end
