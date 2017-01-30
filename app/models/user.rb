class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true, length: {maximum: 50}, uniqueness: true
  validates :email, presence: true, uniqueness: {case_sensitive: false}, length: {minimum: 7, maximum: 255}, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i }
  validates :password, presence: true, length: { minimum: 8 }, allow_nil: true

end
