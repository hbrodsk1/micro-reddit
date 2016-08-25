class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :post

	validates :author, :content, presence: true
	validates :content, length: { in: 1..10000 }
end
