class Client < ApplicationRecord

  has_one :user_id
  has_one :chat


  # Terms of service
  validates :agreement, acceptance: true

  enum gender: [:undisclosed, :female, :male, :other]

end
