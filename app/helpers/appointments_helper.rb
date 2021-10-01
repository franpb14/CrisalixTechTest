module AppointmentsHelper

  def patient(appointment)
    appointment.users.where(role: 0).first
  end

  def doctor(appointment)
    appointment.users.where(role: 1).first
  end
end
