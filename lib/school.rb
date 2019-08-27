class School
  attr_reader :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(students_name, grade)
    if roster[grade]
      roster[grade] << students_name
    else
      roster[grade] = []
      roster[grade] << students_name
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    new_grades = {}
    @roster.each do |grade, students_name|
      new_grades[grade] = students_name.sort
    end
    new_grades
  end
end