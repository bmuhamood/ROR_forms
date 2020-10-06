class UsersController < ApplicationController

  def new
  	@user = User.new
  end

  def create
    # @user = User.new(name="User[username]", name ="User[email]", name ="User[password]")
    @user = User.new(user_params)
    @user.save
    if @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
