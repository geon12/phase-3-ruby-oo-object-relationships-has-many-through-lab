class Appointment
    attr_accessor :date, :patient, :doctor
    @@all = []

    def initialize(date,patient,doctor)
        @date = date
        @patient = patient
        @doctor = doctor

        self.save
    end

    def save
        @@all << self
        self
    end

    def self.all
        @@all
    end

end
