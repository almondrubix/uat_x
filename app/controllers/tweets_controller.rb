class TweetsController < ApplicationController
	
	before_action :authenticate_user!

	def new
		@tweet = Tweet.new
	end

	def create
		print params["tweet"]["content"]
		@tweet = Tweet.new
		@tweet.content = params["tweet"]["content"]
		if @tweet.save
			redirect_to new_tweet_path
		else
			render 'new'
			#do something else
		#this is the code that wil create a new tweet
	end
	end
end
