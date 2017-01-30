class InfoPagesController < ApplicationController
  def about
  end

  def contact
  end

  def help
  end

  def home
    @user = User.new
  end
end
