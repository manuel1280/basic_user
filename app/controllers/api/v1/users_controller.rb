class Api::V1::UsersController < ApplicationController

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    @user = User.find(params[:id])
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params.merge(gender: params[:user][:gender].to_i))

    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end


  private
    def user_params
      params.require(:user).permit(:full_name, :birthday, :gender, :image_url)
    end
end
