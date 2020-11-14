class Doctor
  @@all = []
  attr_accessor :name
  def initialize(name)
    self.name = name
    self.class.all.push(self)
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    appointments.collect do |appointment|
      appointment.patient
    end
  end

  def self.all
    @@all
  end
end
