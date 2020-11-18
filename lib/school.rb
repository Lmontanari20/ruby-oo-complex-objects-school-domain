# code here!
require 'pry'
class School
    attr_reader :roster, :name
    
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if self.roster[grade]
            roster[grade] << name
        else 
            self.roster[grade] = [] << name
        end
    end

    def grade(grade)
        self.roster[grade]
    end

    def sort
        result = self.roster
        result.each {|grade, students|
            students = students.sort!
        }
        result.sort.to_h
    end
end

# this = School.new("New School")
# this.add_student("Blake", 7)
# this.add_student("alice", 7)

# this.add_student("zlake", 4)
# this.add_student("blake", 4)

# puts this.sort