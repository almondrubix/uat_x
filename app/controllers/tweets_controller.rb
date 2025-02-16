class TweetsController < ApplicationController
	
	before_action :authenticate_user!

	def new
		@tweet = Tweet.new
	end

	def create
		print params["tweet"]["content"]
		@tweet = Tweet.new
		@tweet.content = params["tweet"]["content"]
		@tweet.save

		redirect_to new_tweet_path
		#this is the code that wil create a new tweet
	end
end
