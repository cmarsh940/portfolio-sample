class Category < ApplicationRecord
	has_many :posts
	validates :name, presence: true, length: {minimum: 2 }
end
