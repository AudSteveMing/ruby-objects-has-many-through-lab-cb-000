class Doctor

attr_accessor :name

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointment.all.select { |doctor| self == doctor.doctor}
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def patients
    self.appointments.map {|patient| patient.patient}
  end

  def self.all
    @@all
  end

end
