# frozen_string_literal: true

# Bootcamp class, according to specs from a/A
class Bootcamp
  attr_reader :name, :slogan, :teachers, :students
  attr_accessor :grades

  def initialize(name, slogan, student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @teachers = []
    @students = []
    @grades = Hash.new { |hash, key| hash[key] = []}
  end

  def hire(new_teacher)
    @teachers << new_teacher
  end

  def enroll(new_student)
    if @students.length < @student_capacity
      @students << new_student
      true
    else
      false
    end
  end

  def enrolled?(student)
    @students.include? student
  end

  def student_to_teacher_ratio
    @students.length / @teachers.length
  end

  def add_grade(student, grade)
    if enrolled? student
      @grades[student] << grade
      true
    else
      false
    end
  end

  def num_grades(student)
    @grades[student].length
  end

  def average_grade(student)
    @grade[student].sum / @grades[student].length
  end
end
