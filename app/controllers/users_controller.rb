class UsersController < ApplicationController
  def show
    if current_user == nil
      redirect_to welcome_index_path
    else
      @user = User.find(params[:id])
      @items = @user.items
    end
  end
end
