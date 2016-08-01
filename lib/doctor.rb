class Doctor
  attr_accessor :appointments, :patients
  attr_reader :name

  def initialize(name)
    @appointments=[]
    @name=name
  end

  def add_appointment(appointment)
    self.appointments<<appointment
    appointment.doctor=self
  end

  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end
end