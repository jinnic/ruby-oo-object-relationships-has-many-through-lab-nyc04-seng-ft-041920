class Appointment
    #belongs to a patient and a doctor
    attr_accessor :patient, :doctor, :date
    #attr_reader :date
    
    @@all = []

    def self.all
        @@all
    end

    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor

        @@all << self
    end
    
end