class HomesController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate, only: [:show]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def dairi
    bypass_sign_in(User.find(2))
    redirect_to root_path
  end

  def authenticate
    @user = User.find(params[:id])
    redirect_to root_path unless @user.id == current_user.id
  end
end
