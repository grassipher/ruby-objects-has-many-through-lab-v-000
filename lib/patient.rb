class Patient
  @@all = []
  
  attr_accessor :name
  
  def initialize (name)
    @name = name
    @@all << self
  end
  
  def new_appointment(doctor, date)
    create_appointment = Appointment.new(date, self, doctor)
  end
  
  def self.all
    @@all
  end
  
end