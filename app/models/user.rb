# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable

  has_one :address, as: :addressable

  validates :tax_number, presence: true, format: { with: /\A\d+\z/, message: "only allows letters" }, length: { is: 10 }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :middle_name, presence: true
end
