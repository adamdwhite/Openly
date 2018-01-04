class Client < ApplicationRecord

  belongs_to :user
  has_one :room 

  enum gender: [:undisclosed, :female, :male, :other]

end
