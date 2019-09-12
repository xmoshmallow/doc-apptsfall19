class Patient < ApplicationRecord
  has_many :appointments
  has_many :physicians, through :appointments
  has_many :enrollments, dependent: :destroy
end
def full_name
  "#{self.first_name} #{self.last_name}"
end