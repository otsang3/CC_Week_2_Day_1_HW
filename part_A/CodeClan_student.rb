class Student

  def initialize(student_name, cohort)
    @student_name = student_name
    @cohort = cohort
  end

  def student_name()
    return @student_name
  end

  def cohort()
    return @cohort
  end

  def set_name(name)
    @student_name = name
  end

  def set_cohort(cohort)
    @cohort = cohort
  end

  def can_talk()
    return "I can talk!"
  end

  def say_favourite_language(computer_language)
    return "I love #{computer_language}"
  end

end
