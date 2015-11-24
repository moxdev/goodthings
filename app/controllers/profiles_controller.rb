class ProfilesController < ApplicationController
  def show
    @user = current_user
    @email = @user.email
  end
end
