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
    @roster.values.each do |i|
      i[0].sort
    end
  end

end
