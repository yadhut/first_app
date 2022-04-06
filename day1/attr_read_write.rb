class School
    attr_writer :schoolName
    attr_reader :schoolName

    def initialize(aSchoolName)
        @schoolName = aSchoolName
    end
end

class Student < School

    attr_reader :studentName
    attr_writer :studentName
    attr_reader :studentAge
    attr_writer :studentAge
    def initialize(aStudentName,aStudentAge,aSchoolName)
        super(aSchoolName)
        @studentName = aStudentName
        @studentAge = aStudentAge
    end
end

s1 = Student.new("Yadhu",24,"cuh")
# s1.studentName = "Yadhu"
# s1.studentAge = 24

puts("Student name is #{s1.studentName} #{s1.studentAge} #{s1.schoolName}")
puts(s1.inspect)

