class UsersController < ApplicationController
    def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])

    render json: @user
  end

  def create
    @user = User.create(user_id: params[:user_id], name: params[:name])

    render json: @user
  end

  def update
    @user = User.find(params[:id])
    @user.save

    render json: @user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  private

  def permitted_params
    params.require(:results).permit!
  end

end