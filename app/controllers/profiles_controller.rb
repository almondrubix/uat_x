class ProfilesController < ApplicationController
	def show
		@user = User.find(params["id"])
		@tweets = @user.tweets
	end
end