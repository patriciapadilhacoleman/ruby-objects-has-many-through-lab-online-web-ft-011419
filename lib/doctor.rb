
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
    
    app = []
    app = Appointment.all.find {|appointment| appointment.doctor == self}
    binding.pry
     
  end
  
  def patients
    
    
    appointments.collect do |appointment|
      
       appointment.patient
      
    end
    
  end

end