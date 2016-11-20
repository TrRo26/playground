require 'bcrypt'

class User < ActiveRecord::Base
  has_many :posts

  validates :username, uniqueness: true
  validates :email, uniqueness: true

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(password_attempt)
    self.password == (password_attempt)
  end

end
