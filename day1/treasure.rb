class Thing
    def set_name(aName)
        @name = aName
    end

    def get_name
        return @name
    end
end

class Treasure
    def initialize(aName,aDescription)
        @name = aName
        @description = aDescription
    end

    def to_s
        "The #{@name} Thresure is #{@description} \n"
    end
end

thing1 = Thing.new
thing1.set_name('A lovely Thing')
puts(thing1.get_name)

t1 = Treasure.new("sword","story of the 90's war" )
puts(t1.to_s)

puts("inspection #{t1.inspect}")

