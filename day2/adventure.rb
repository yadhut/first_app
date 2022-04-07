class Thing
    @@num_things = 0

    attr_reader(:name, :description)
    attr_writer(:description)

    def initialize(aName,aDescription)
        @name = aName
        @description = aDescription
        @@num_things +=1
    end

    def to_s
        return "(Thing.to_s):: The #{@name} Thing is #{@description}"
    end

    def show_classvars
        return "There are #{@@num_things} Thing object in this game"
    end
end

class Room < Thing
    #taking all the behaviour of the Thing classs
end

class Treasure < Thing
    attr_reader :value
    attr_writer :value

    def initialize(aName, aDescription,aValue)
        super(aName,aDescription)
        @value = aValue
    end
end

class Map

    def initialize(someRooms)
        @rooms = someRooms
    end

    def to_s
        
        @rooms.each{
            |a_room|
            puts(a_room.inspect)
        }
    end
end


t1 = Treasure.new("Js","basics of js",200)
t2 = Treasure.new("java","basic of java",300)

room1 = Room.new("holiday palace","room in delhi")
room2 = Room.new("new York","room in Us")
room3 = Room.new("kochin","room in kerala")

myMap = Map.new([room1,room2,room3])

puts("showing the treasure 1 by using to_s method #{t1.to_s}")
puts("showing the treasure 2 #{t2.name}, #{t2.description}")
t1.value = 10000
puts("value of t1 after re assigning #{t1.value}")

t1.description << "this string is appended to the existing string using <<"
puts("displying string after appening in t1 #{t1.description}")

# puts("display all the rooms object that we created by calling to_s method\n #{myMap.to_s}")
myMap.to_s
puts(t1.show_classvars)
