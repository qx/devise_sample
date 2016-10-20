class UsersController < ApplicationController
  before_action :authenticate_user!

  def update
    @user = User.find(current_user.id)
    if @user.update(user_params)
      # Sign in the user by passing validation in case their password changed
      # bypass_sign_in(@user)

      render :nothing => true
    else
      render "edit"
    end
  end

  def user_params
    # NOTE: Using `strong_parameters` gem
    params.require(:user).permit(:password, :password_confirmation)
  end

end
