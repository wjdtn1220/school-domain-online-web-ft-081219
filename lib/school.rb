class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, students_grade)
    if roster.include?(students_grade) == false
      @roster[students_grade] = []
    end
    @roster[students_grade] << name 
  end
  
  def grade(students_level)
    @roster[students_level]
  end
  
  def sort
    @roster.each do |students_grade, name|
      @roster[students_grade] = name.sort
    end
  end
end

