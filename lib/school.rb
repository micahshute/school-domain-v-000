# code here!

class School
  attr_reader :name, :roster
  attr_writer :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    puts "#{name}, #{grade}"
    if @roster.keys.include?(grade)
      puts "roster has grade"
      @roster[grade] << name
    else
      puts "roster doesn't have grade"
      @roster[grade] = [name]
    end

  end
end

school = School.new("Bayside High School")
school.add_student("bob", 9s)
