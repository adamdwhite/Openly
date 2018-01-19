class Client < ApplicationRecord

  belongs_to :user
  has_one :chat

  enum gender: [:undisclosed, :female, :male, :other]

end
