#by using Attribute Readers and Writers
#we can remove lengthy code and make it more easy to read
#eleiminate the get and set methods


class Vehicle
    attr_reader :description
    attr_writer :description
    attr_writer :name

    def initialize (aName,aDescription)
        @name = aName
        @description = @aDescription
    end

    #get accessor for @name also we can used attr_writer accessor

    def name
return @name.capitalize
    end

end

class Car < Vehicle
    attr_accessor :model

    def initialize(aName,aDescription)
        super(aName,aDescription)
    end
end

alto = Car.new("suzuki", "its having four tier")
alto.model = 'lxi'
puts("#{alto.name} #{alto.description}  #{alto.model}")
alto.name = 'R34'
alto.description = 'legend'
puts("#{alto.name} #{alto.description}")