


class Patient

    @@all = []

    def self.all
        @@all
    end
    
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def appointments
        Appointment.all.select {|appointment| appointment.patient == self}
    end

    def new_appointment(date, doctor)
        appointment_new = Appointment.new(date, self, doctor)
    end

    def doctors
        appointments.collect {|appointment| appointment.doctor}
    end

    








end
