class Patient
  
  attr_accessor :name, :date, :doctor, :appointments
  
  @@all = [ ]
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(date, doctor)
    new_apt = Appointment.new(date, self, doctor)
    p new_apt
  end
  
  def self.all
    @@all
  end
  
  def appointments
    apt = self
    #apt.new_appointment(@date,@doctor)
  end
  
  def doctors
    doctors_list = [ ]
    Appointment.all.each do |appointment|
      p appointment.doctor
      #doctors_list << appointment.doctor
    end
    doctors_list
  end
  
  
end