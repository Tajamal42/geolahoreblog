class Post < ApplicationRecord
	belongs_to :category
	mount_uploader :image, ImageUploader
	validates :title, :content, :category, presence: true
	has_many :line_items, inverse_of: :order
end
