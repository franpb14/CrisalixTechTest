class AppointmentsController < ApplicationController
  include AppointmentsHelper
  before_action :logged_in_user

  def index
    appointments = current_user.appointments
    @appointments = appointments.page(params[:page]).per(10)
  end

  def new
    @doctor = User.find(params[:doctor_id])
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    doctor_id = params[:appointment][:doctor_id]
    if @appointment.save
      @user_appointment = UserAppointment.new(user_id: current_user.id, appointment_id: @appointment.id)
      @doctor_appointment = UserAppointment.new(user_id: doctor_id, appointment_id: @appointment.id)
      if @user_appointment.save && @doctor_appointment.save
        flash[:success] = 'Appointment successfully created'
        redirect_to appointments_path
      else
        flash[:danger] = 'Something went wrong'
        redirect_to new_appointment_path(doctor_id)
      end
    else
      flash[:danger] = 'Something went wrong. Make sure you have fullfilled all the fields.'
      redirect_to new_appointment_path(doctor_id)
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date, :photo1, :photo2, :photo3)
  end
end