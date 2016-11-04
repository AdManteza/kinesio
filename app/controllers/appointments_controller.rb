class AppointmentsController < ApplicationController
  before_action :authenticate_patient!

  def index
    @appointments = Appointment.all
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.create(appointment_params)
    
    if @appointment.errors.any?
      render :new
    else
      redirect_to appointments_path, notice: "Appointment was booked successfully"
    end
  end

  protected

  def appointment_params
    params.require(:appointment).permit(:time_slot, :date) 
  end

end
