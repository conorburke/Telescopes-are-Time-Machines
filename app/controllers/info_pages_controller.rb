require 'twitter_api.rb'

class InfoPagesController < ApplicationController
  def about
  end

  def contact
  end

  def help
  end

  def home
    @user = User.new
    @chat_rooms = ChatRoom.all
  end
end
