class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @samples = @user.samples.order("sampled_at asc")
  end

end
