class User < ApplicationRecord
  has_many :user_appointments
  has_many :appointments, through: :user_appointments
  has_secure_password

  before_save { self.email = email.downcase }
  validates :name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }

  def doctor?
    role == 1
  end
end
