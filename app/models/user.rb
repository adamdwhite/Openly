class User < ApplicationRecord

  # attr_accessor :email, :password, :password_confirmation

  has_secure_password
  
  # presence_in :session

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
  
  validates :password, presence: true, length: { minimum: 6 }

  def formatted_email
      "#{@name} <#{@email}>"
  end
  
  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)

end
