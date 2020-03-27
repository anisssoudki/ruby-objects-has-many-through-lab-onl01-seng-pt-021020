class Patient

  attr_reader :name, :appointments, :doctor
@@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end
  def self.all
    @@all 
  end
  def appointments
    Appointment.all.setect do |appointments|
      appointments.patient == self
    
    end
   
  end

  def doctors
    Appointment.all.map do |appointments|
      appointments.doctor
    end
  end
end
