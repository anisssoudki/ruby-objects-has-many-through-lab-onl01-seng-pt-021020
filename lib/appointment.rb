class Appointment

  attr_reader :date, :patient, :doctor

  @@all = []

  def initialize(date = "", patient ="", doctor = "")
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end

  def patients
    @patient
  end

  def doctors
    @doctor
  end

end