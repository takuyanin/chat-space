class UsersController < ApplicationController
  def show
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render edit_user_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
