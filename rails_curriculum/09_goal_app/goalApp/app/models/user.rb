class User < ApplicationRecord 
  validates :username, :session_token, presence: true, uniqueness: true
  validates :password_digest, presence: true 
  validates :password, length: { minimum: 6, allow_nil: true } 

  attr_reader :password

  def self.find_by_credentials(username, password)
  end

  def self.generate_session_token 
  end 

  def reset_session_token 
  end 

  def password=(password) 
    @password = password 
    self.password_digest = BCrypt::Password.create(password)
  end 

  def is_password?(password)
  end 

  private 

  def ensure_session_token 
  end 

end