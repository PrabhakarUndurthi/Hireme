class UserSessionController < ApplicationController

	# When new user wants to register on the site
	# It allocates new session.

	def new
		@user_session = UserSession.new
end


def create 
	@user_session = UserSession.new(params[:user_session])

	# The new user detials would be saved in the database, and It will falsh a message
    # to the new user .i.e welcome message.

    # If the user enters wrong information in the params[:user-session]
    # then, the application will not able to save the details, Instead 
    # It will  produce a new form again to fill the details.



if @user_session.save
	falsh[:notice]  = "Welcome to Hireme"
	redirect_to jobs_url
	else
	  render :action => :new
	  end



# when the current user session is availble , then  the destroy
# method would cause to to call the destroy on that user.
# 
  def destroy
  	current_user_session && current_user.destroy
  	falsh[:notice] = "You are now logged out !!!"
  	redirect_to jobs_url

   end

end
