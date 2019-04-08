class CodeClanStudent

  attr_accessor :student_name, :cohort_name

  def initialize(student_name, cohort_name)
    @student_name = student_name
    @cohort_name = cohort_name
  end

  def talk
    return "I sniff glue!"
  end


end
