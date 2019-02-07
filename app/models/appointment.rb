class Appointment < ActiveRecord::Base
  # Associations
  belongs_to :doctor
  belongs_to :patient

  def date
    self.appointment_datetime.strftime('%B %e, %Y')
  end

  def time
    self.appointment_datetime.strftime('%H:%M:%S')
  end
end
