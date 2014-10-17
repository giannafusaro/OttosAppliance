class Admin::UsersController < ApplicationController

  # make sure user is logged in before running these actions...
  # except the login page
  before_filter :require_user, except: [ :login ]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = "New Admin created successfully!"
      redirect_to admin_users_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Admin updated successfully!"
      redirect_to admin_users_path
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id]).destroy
    flash[:success] = "Admin destroyed successfully!"
    redirect_to admin_users_path
  end



  def login
    if current_user
      redirect_to admin_dashboard_path
    else
      if request.post?
        if @user = User.find_by_email(params[:user][:email])
          if @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to admin_dashboard_path
          else
            flash.now[:error] = "Your password is incorrect."
          end
        else
          flash.now[:error] = "There is no user with that login."
        end
      end
    end
  end

  def logout
    session[:user_id] = nil
    flash[:success] = "You are now logged out"
    redirect_to admin_login_path
  end

private

  def user_params
    params.require(:user).permit(:email, :name, :password)
  end



  # def create
  #   @user = User.create user_params
  # end
  #
  # private
  #
  #   def user_params
  #     params.require(:user).permit(:name, :email, :password)
  #   end

end
