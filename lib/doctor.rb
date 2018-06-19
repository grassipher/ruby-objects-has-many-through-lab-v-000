class Doctor
  @@all = []
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(date, patient)
    create_appointment = Appointment.new(date, patient, self)
  end
  
  def appointments
    Appointment.all.select do |apointment_list|
      apointment_list.doctor == self
    end
  end
  
  def patients
    self.appointments.collect do |appointment_list|
      appointment_list.patient
    end
  end
  
  def self.all
    @@all
  end
  
end