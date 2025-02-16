class Tweet < ApplicationRecord
	validates :content, presence: true
	validates :content, length: {maximum: 5}

	belongs_to :user
end
