class UsersController < ApplicationController

  def show
   @user = User.find(params[:id])

  end

  def index
    @users = User.all
    @book = Book.new
  end

  def edit
    @user = current_user.id
  end

  def update
   @user = User.find(params[:id])
   @user.update(user_params)
    if @user.save
      redirect_to user_path(@user), "book was succesfully update."
    else
      render action: :edit
    end
  end


end
