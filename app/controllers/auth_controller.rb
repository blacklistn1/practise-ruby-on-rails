class AuthController < ApplicationController
  def login
    @user = User.new
  end

  def post_login
    @user = User.find_by(email: login_params[:email])
    if @user.nil?
      render :login, status: :unprocessable_entity
    else
      redirect_to homepage_path, notice: 'Logged in'
    end
  end

  def register
  end

  private

  def login_params
    params.require(:user).permit(:email, :password)
  end
end
