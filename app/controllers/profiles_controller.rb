class ProfilesController < ApplicationController
  def show
    @user = current_user
    @microposts = @user.microposts.paginate(page: params[:page])
  end
end
