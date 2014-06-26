class UsersController < ApplicationController

  # make sure user is logged in before running these actions...
  # except the login page
  before_filter :require_user, except: [ :login ]

  def login
    if request.post?
      if @user = User.find_by_email(params[:user][:email])
        if @user.authenticate(params[:user][:password])
          session[:user_id] = @user.id
          redirect_to dashboard_path
        else
          flash.now[:error] = "Your password is incorrect."
        end
      else
        flash.now[:error] = "There is no user with that login."
      end
    end
  end

  def logout
    session[:user_id] = nil
    flash[:success] = "You are now logged out"
    redirect_to login_path
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
