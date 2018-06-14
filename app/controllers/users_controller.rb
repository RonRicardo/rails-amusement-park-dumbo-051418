class UsersController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def show
    @user = User.find(params[:id])
    render :show
  end

  def create
    @user = User.create(user_params)

    # if @user.valid?

    # else
    redirect_to user_path(@user)
  end




private
  def user_params
    params.require(:user).permit(:name, :password, :nausea, :happiness, :tickets, :height, :admin)
  end


end
