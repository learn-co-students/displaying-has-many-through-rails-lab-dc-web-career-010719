class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  delegate :name, to: :doctor, prefix: true
  delegate :name, to: :patient, prefix: true

  def datetime
    self.appointment_datetime.strftime("%B %d, %Y at %H:%M")
  end
end
