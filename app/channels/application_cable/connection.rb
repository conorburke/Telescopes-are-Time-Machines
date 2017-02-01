module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user_email

    def connect
      self.current_user_email = cookies.signed[:user_email]
      logger.add_tags 'ActionCable', User.find_by(email: current_user_email).email
    end
  end
end
