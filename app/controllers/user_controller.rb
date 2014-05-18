class UserController < ApplicationController

  def login
    @user = User.new
  end

end
