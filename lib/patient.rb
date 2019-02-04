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
    
    binding.pry
    Appointment.new(date, self, doctor)
    
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