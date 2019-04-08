require('minitest/autorun')
require('minitest/rg')
require_relative('../homework')

class TestCodeClanStudent < MiniTest::Test

  def test_student_name
    code_clan_student = CodeClanStudent.new('Monty', 'E31')
    assert_equal('Monty', code_clan_student.student_name)
  end

  def test_cohort_name
    code_clan_student = CodeClanStudent.new('Monty', 'E31')
    assert_equal('E31', code_clan_student.cohort_name)
  end

  def test_student_can_speak
    code_clan_student = CodeClanStudent.new('Monty', 'E31')
    #code_clan_student.talk("I sniff glue!")
    assert_equal("I sniff glue!", code_clan_student.talk)
  end


end
