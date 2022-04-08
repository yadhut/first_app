
module MyFirstModule
    Name = "Yadhu"
    SURNAME = "krishna"

    def greet
        puts "Hello #{Name} #{SURNAME}"
    end

    # def MyFirstModule.greet
    #     puts "heyy #{Name}"
    # end
end
include MyFirstModule

puts( greet)
puts(MyFirstModule::Name)
puts( MyFirstModule.greet )