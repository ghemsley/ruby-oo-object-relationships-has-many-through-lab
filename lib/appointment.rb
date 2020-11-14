class Appointment
  @@all = []
  attr_accessor :date, :patient, :doctor
  def initialize(date, patient, doctor)
    self.date = date
    self.patient = patient
    self.doctor = doctor
    self.class.all.push(self)
  end

  def self.all
    @@all
  end
end
