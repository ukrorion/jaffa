# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  enum role: { sysadmin: 0, owner: 1, admin: 2, accountant: 3, employee: 4 }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable

  belongs_to :company, optional: true
  has_one :address, as: :addressable

  accepts_nested_attributes_for :address

  validates :tax_number, presence: true, format: { with: /\A\d+\z/, message: "only allows letters" }, length: { is: 10 }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :middle_name, presence: true
  validates :birthday, presence: true

  def full_name
    "#{last_name} #{first_name} #{middle_name}"
  end
end
