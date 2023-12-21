class UsersController < ApplicationController
  def show
    @user =　User.find(params[:id])
    @books = @user.book
  end

  def edit
  end

  def top
  end
end
