class Post < ApplicationRecord
	belongs_to :user
	has_many :comments

	validates :title, :author, :content, presence: true
	validates :title, length: { in: 1..60 }
	validates :content, length: { in: 1..10000 }
end
