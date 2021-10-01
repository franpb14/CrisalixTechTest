class Appointment < ApplicationRecord
  has_many :user_appointments
  has_many :users, through: :user_appointments
  has_one_attached :photo1
  has_one_attached :photo2
  has_one_attached :photo3

  validates :date, presence: true
  validates :photo1, presence: true
  validates :photo2, presence: true
  validates :photo3, presence: true
end
