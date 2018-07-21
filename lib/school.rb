class School

  def initialize(school_name)
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    if !@roster[grade].nil?
      @roster[grade] << student
    else
      @roster[grade] = [student]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    i = 0
    @roster.each do |grade, names|
      puts names[i]
    end
  end

end
