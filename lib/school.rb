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