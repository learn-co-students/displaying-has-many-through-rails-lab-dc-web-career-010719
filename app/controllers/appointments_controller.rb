class AppointmentsController < ApplicationController

  before_action :get_appointment, only: :show

  def show
  end

  private

  def get_appointment
    @appointment = Appointment.find(params[:id])
  end

end
