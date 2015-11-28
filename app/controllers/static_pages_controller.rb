class StaticPagesController < ApplicationController
  skip_before_filter :authenticate_user!, #only:[:about]
  # limit actions like this - "only: [:home, :about]"

  def home
    if user_signed_in?
      redirect_to microposts_path
    else
      flash[:notice] = "Please login to see your home feed!"
      root_path
    end
  end

  def about
  end

  def help
  end

  def developer
  end

  def terms
  end

  def contact
  end
end
