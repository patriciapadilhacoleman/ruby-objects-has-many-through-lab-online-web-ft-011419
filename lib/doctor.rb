
class Doctor
  attr_accessor :name
  @@all = []
  
  
  def initialize(name)
    
    @name = name
    @@all << self
    
  end
  
  def self.all 
    
    @@all
    
  end
  
  def new_appointment(patient, date)
    
   Appointment.new(date,patient,self)
    
  end
  
  def appointments
    
    appointments = []
    Appointment.all.each do |appointment|
      
      if appointment.doctor == self
        
        appointments << appointment
      end
      
    end
    appointments
  end
  
  def patients
    
    
    appointments.collect do |appointment|
      
       appointment.patient
      
    end
    
  end

end