class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      UserMailer.welcome(@user).deliver_now
      redirect_to login_new_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
  end

  private
   def user_params
    params.require(:user).permit(:name, :email, :password)
   end
end
