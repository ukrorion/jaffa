class Company < ApplicationRecord
  belongs_to :owner, class_name: 'User', inverse_of: :company

  has_one :address, as: :addressable
  has_one :registration_address, as: :addressable
  has_many :bank_accounts
  has_many :users

end
