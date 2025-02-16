class Tweet < ApplicationRecord
	validates :content, presence: true
	validates :content, length: {maximum: 5}
end
