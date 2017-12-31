class SessionsController < ApplicationController
  def new
  end
    
  def create 
    
    # if user exists and matches in database:
    user = User.find_by_email(params[:email])
    
    
    if user && user.authenticate(params[:password])
      # Log the user in and redirect to the user's show page.
      session[:user_id] = user.id
      log_in user
      redirect_to user, :notice => 'Welcome back.'

    else
      # Present error message.
      flash.now[:danger] = 'Invalid email/password combination. Please try again.' 
      render 'new'
    end
  end
    
  def destroy
    log_out
    redirect_to root_url
  end
  
end
