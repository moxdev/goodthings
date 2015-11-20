class StaticPagesController < ApplicationController
  skip_before_filter :authenticate_user!
  # limit actions like this - "only: [:home, :about]"

  def home
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
