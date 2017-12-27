class User < ApplicationRecord

  attr_accessor :email, :password, :password_confirmation

  # has_secure_password
  
  before_save { self.email = email.downcase }
  
  # def initialize(attributes = {})
  #   @email  = :email
  #   @password = :password
  #   @password_confirmation = :password_confirmation
  # end

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: {case_sensitive: false}

  def formatted_email
      "#{@name} <#{@email}>"
  end
  
end
