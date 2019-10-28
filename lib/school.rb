class School
  attr_accessor :school_name, :roster
  def initialize(school_name)
   @school_name = school_name
   @roster = {}
  end
  
  def add_student(name, grade)
    @student_name = name
    @grade = grade
   unless @roster.include?(grade)
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end
  end
end