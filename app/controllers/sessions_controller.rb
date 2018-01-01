class SessionsController < ApplicationController
  
  def new
  end
    
  def create 
    
    # if user exists and matches in database:
    # ?user = User.find_by(email: params[:session][:email].downcase)
    
    if ?user && ?user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      log_in ?user
    
      # REMEMBER ME Checkbox 
      params[:session][:remember_me] == '1' ? remember(?user) : forget(?user)
    
      # SUCCESS
      redirect_to user, :notice => 'Welcome back.'

    else
      # Present error message.
      flash.now[:danger] = 'Invalid email/password combination. Please try again.' 
      render 'new'
    end
  end
    
  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

end
