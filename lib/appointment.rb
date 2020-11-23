
require "pry"
require_relative 'doctor.rb'
require_relative 'patient.rb'
class Appointment

    @@all = []

    def self.all
        @@all
    end

    attr_accessor :date, :doctor, :patient

    def initialize(date, patient, doctor)
        @date = date
        @doctor = doctor
        @patient = patient
        @@all << self
    end


end

