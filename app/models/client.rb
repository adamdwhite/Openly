class Client < ApplicationRecord

  # belongs_to :user
  has_one :conversation 

  enum gender: [:undisclosed, :female, :male, :other]

end
