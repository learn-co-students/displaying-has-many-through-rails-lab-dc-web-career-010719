class Doctor < ActiveRecord::Base
  # Associations
  has_many :appointments
  has_many :patients, through: :appointments
end
