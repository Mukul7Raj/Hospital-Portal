class Patient < ApplicationRecord
  has_many :appointments, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :date_of_birth, presence: true
  validates :gender, inclusion: { in: %w[male female other] }
  validates :contact_number, presence: true, format: { with: /\A\d{10}\z/, message: "must be a 10-digit number" }
end