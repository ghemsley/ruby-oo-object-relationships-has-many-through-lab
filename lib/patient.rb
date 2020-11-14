class Patient
  @@all = []
  attr_accessor :name
  def initialize(name)
    self.name = name
    self.class.all.push(self)
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    appointments.collect do |appointment|
      appointment.doctor
    end
  end

  def self.all
    @@all
  end
end
