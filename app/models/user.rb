class User < ApplicationRecord

  has_secure_password

  before_save { self.email = email.downcase }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: {case_sensitive: false}


  attr_accessor :email, :password
  
    def initialize(attributes = {})
      @email  = attributes[:email]
      @password = attributes[:password]
    end
  
    def formatted_email
      "#{@name} <#{@email}>"
    end
  
end
