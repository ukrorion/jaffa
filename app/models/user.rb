# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable

  has_one :firm, class_name: 'Company', foreign_key: 'owner_id', inverse_of: :owner
  belongs_to :company, optional: true
  has_one :address, as: :addressable

  accepts_nested_attributes_for :firm, :address

  validates :tax_number, presence: true, format: { with: /\A\d+\z/, message: "only allows letters" }, length: { is: 10 }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :middle_name, presence: true
  validates :birthday, presence: true
end
