class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.patient_id = current_patient.id

    if @appointment.save
      redirect_to appointments_path
    else
      render :new
    end    
  end

  def edit
  end

  protected

  def appointment_params
    params.require(:appointment).permit(:time_slot, :date)
  end
end
