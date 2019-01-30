# code here!
require "pry"


class School
	attr_reader :roster, :name, :grade

	def initialize(name)
		@name = name
		@roster = {}
	end
	def add_student(name, grade)
		@roster[grade] ||= []
		@roster[grade] << name 
	end
	def grade(grade)
		@grade = grade
		@roster[grade]
	end
	def sort
		@roster.each do |grade, names|
			@roster[grade] = names.sort
		end
	end
end
