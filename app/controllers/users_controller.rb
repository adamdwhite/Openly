class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy



  # GET /users
  # GET /users.json
  def index
    @users = User.paginate(page: params[:page])
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
  end

  # GET /users/new
  def new
    @user = User.new
    @title = "Create My Account"
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
      if params[:commit] == 'Client'
          @user.toggle(:is_client)
      elsif params[:commit] == 'Counselor'
          @user.is_client = false
      end

      if @user.save
        log_in @user
        session[:user_id] = @user.id
        flash[:success] = "Welcome to Openly! Please visit your Account section to complete your profile."
        redirect_to @user
      else
        render 'new'
      end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User was successfully deleted"
    redirect_to root_url
  end

  private
# Never trust parameters from the scary internet, only allow the white list through.

# Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end


# PARAMS
  def user_params
    params.require(:user).permit(:email, :password, :is_client)
  end

# Confirms logged-in user.
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

# Confirms the correct user.
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user
  end

# Confirms an admin user.
  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end

end

