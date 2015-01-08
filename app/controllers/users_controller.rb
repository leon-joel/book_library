class UsersController < ApplicationController

  before_action :set_user, only: %w( show edit update destroy)
  def  index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to users_url
    else
      render 'new'
    end
  end

  def show
    # @user = User.find(params[:id])  # moved to "before_action" filter
  end

  def edit
    # @user = User.find(params[:id])  # moved to "before_action" filter
  end

  def update
    # @user = User.find(params[:id])  # moved to "before_action" filter

    if @user.update(user_params)
      redirect_to user_url(@user)
    else
      render 'edit'
    end
  end

  def destroy
    # @user = User.find(params[:id])  # moved to "before_action" filter
    @user.destroy
    redirect_to users_url
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :department)
 end
end
