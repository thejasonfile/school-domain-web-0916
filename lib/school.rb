# code here!
require "pry"

class School

  attr_reader :roster

  def initialize(str)
    @school_name = str
    @roster = {}
  end

  def add_student(str, num)
    @roster[num] = [] unless @roster.has_key?(num)
    @roster[num] << str
  end

  def grade(num)
    @roster[num]
  end

  def sort
    @roster.each_with_object({}) do |(grade,students),  new_hash|
      new_hash[grade] = students.sort 
    end
  end

end

school = School.new("Bayside")
school.add_student("Homer Simpson", 9)
school.add_student("Bart Simpson", 9)
school.add_student("Avi Flombaum", 10)
school.add_student("Jeff Baird", 10)
school.add_student("Blake Johnson", 7)
school.add_student("Jack Bauer", 7)
binding.pry