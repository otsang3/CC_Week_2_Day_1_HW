require('minitest/autorun')
require('minitest/reporters')
require_relative('../CodeClan_student.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestStudent < MiniTest::Test

def setup()
  @student1 = Student.new("Oscar", "G18")
end

def test_get_name()
  assert_equal("Oscar", @student1.student_name())
end

def test_get_cohort()
  assert_equal("G18", @student1.cohort())
end

def test_set_name()
  @student1.set_name("Niamh")
  assert_equal("Niamh", @student1.student_name())
end

def test_can_talk()
  assert_equal("I can talk!", @student1.can_talk())
end

def test_say_favourite_language()
  @student1.say_favourite_language("Ruby")
  assert_equal("I love Ruby", @student1.say_favourite_language("Ruby"))
end

end
