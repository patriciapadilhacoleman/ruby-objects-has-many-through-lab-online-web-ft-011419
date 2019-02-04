require 'pry'
class Patient
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    
    @name = name
    @@all << self
    
  end
  
  def self.all
    
    @@all
    
  end
  
  def new_appointment(doctor, date)
    
  
    Appointment.new(date, self, doctor)
    
  end
  
  def appointments
    
    appointments = []
     Appointment.all.each do |appointment| 
     
      if appointment.patient == self
        
         appointments << appointment
         
      end
     end
     appointments
     
  end
  
  def doctors
    
    doctors = []
     Appointment.all.each do |appointment| 
     
      if appointment.patient == self
        
         doctors << appointment.doctor
         
      end
     end
     doctors
     
  end
  
end