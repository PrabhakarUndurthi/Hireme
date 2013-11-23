class ApplicationController < ActionController::Base
  protect_from_forgery


# these two helper methods often used in this application .
  helper_methods :current_user_session, :current_user

  private

# If the currently logged in user session is defiend,
# It returns that user session from the catche OR database.
# Otherwise it finds that user session

  def current_user_session
  	return @current_user_session  if defined(@current_user_session)
  	@current_user_session = UserSession.find
end

    # If the currently logged in user is defined already, It returns that user details.
	# Otherwise,it checks the following :

	# when the current user = current user session , then It would call the find method
	# on that user.

def current_user
	return @current_user if defined?(@current_user)
	@current_user = current_user_session && current_user_session.user
	end
end


