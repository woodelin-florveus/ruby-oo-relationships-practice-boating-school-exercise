require 'pry'

class Instructor

@@all = []

attr_reader :name

def initialize(name)
    @name = name
    @@all << self
end

def self.all
    @@all
end

def all_tests
    # access Boating.test all instructor test get instructors 
    BoatingTest.all.select{|test| test.instructor == self}
end

def all_students
    # binding.pry
    self.all_tests.map{|test| test.student}
    # from instructor test get all student 
end

def all_passed_test
    self.all_tests.select {|test| test.test_status == "passed"}
end

def passed_students
    self.all_passed_test.map{|test| test.student}
end

def find_test(test_name_str)
    # binding.pry
    BoatingTest.all.find {|test| test.test_name == test_name_str}
end

def find_student(name)
    # 1. go to the student.all
    # 2. find the student 
    Student.all.find {|student| student.student_name == name}
end

def pass_student(student, test_name_str)
    # binding.pry
    # we dont know if it should look for a student instance 
    # 1. create a boating test with the found student

    test = find_test(test_name_str)

    if test && test.student == student
        test.test_status == "passed"
    else
        student = find_student(name_str)
         # BoatingTest.new(spongebob, "test 101", "passed", krabs)
        BoatingTest.new(student, test_name_str, "passed", self)
    end   
end
end

# `Instructor` class:
# * initialize with a name
# * `Instructor.all` should return all instructors
# * `Instructor#passed_students` should return an array of students who passed a boating test with this specific instructor.
# * `Instructor#pass_student` should take in a student instance and test name. If there is a `BoatingTest` whose name and student match the values passed in, this method should update the status of that BoatingTest to 'passed'. If there is no matching test, this method should create a test with the student, that boat test name, and the status 'passed'. Either way, it should return the `BoatingTest` instance.
# * `Instructor#fail_student` should take in a student instance and test name. Like `#pass_student`, it should try to find a matching `BoatingTest` and update its status to 'failed'. If it cannot find an existing `BoatingTest`, it should create one with the name, the matching student, and the status 'failed'.
# * `Instructor#all_students` should return an array of students who took a boating test with this specific instructor. 
