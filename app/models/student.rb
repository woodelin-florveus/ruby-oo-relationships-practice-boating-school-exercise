require "pry"

class Student

    attr_reader :student_name

    @@all = []

def initialize(student_name)
    @student_name = student_name
    @@all << self
end

def add_boating_test(name,status,instructor)
    BoatingTest.new(self, name, status, instructor)
end


def self.all
    @@all
end

end


