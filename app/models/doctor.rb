class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  delegate :count, to: :patients, prefix: true
  delegate :count, to: :appointments, prefix: true
end
