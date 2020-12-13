require 'pry'
require 'require_all'

require_all 'models'




spongebob = Student.new("Spongebob")
patrick = Student.new("Patrick")
squidward = Student.new("Squidward")

puff = Instructor.new("Ms.Puff")
krabs = Instructor.new("Mr.Krabs")
sandy = Instructor.new("Sandy")

first_test = BoatingTest.new(spongebob, "test 101", "passed", krabs)
second_test = BoatingTest.new(patrick, "boating for pros", "pending", sandy)
third_test = BoatingTest.new(squidward, "101 animal crossing", "fail", puff)


sandy.pass_student("Squidward", "101 animal crossing")
puff.pass_student("patrick", "boating for pros")
krabs.pass_student("Spongebob", "test 101")


#  puff.find_test("test 101")

binding.pry
0

# no_crashing = spongebob.BoatingTest.new("Don't Crash 101", "pending", puff)
# power_steering_failure = patrick.BoatingTest.new("Power Steering 202", "failed", puff)
# power_steering_pass = patrick.BoatingTest.new("Power Steering 201", "passed", krabs) 