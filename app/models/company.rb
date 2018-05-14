class Company < ApplicationRecord
  has_one :address, as: :addressable
  has_one :registration_address, as: :addressable
  has_many :bank_accounts, inverse_of: :company
  has_many :users

  accepts_nested_attributes_for :bank_accounts

end
