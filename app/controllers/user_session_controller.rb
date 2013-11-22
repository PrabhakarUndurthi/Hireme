class UserSessionController < ApplicationController

	def new
		@user_session = UserSession.new
end


def create 
	@user_session = UserSession.new(params[:user_session])


if @user_session.save
	falsh[:notice]  = "Welcome to Hireme"
	redirect_to jobs_url
else
end
end
