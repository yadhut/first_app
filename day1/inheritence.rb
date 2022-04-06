class Vehicle
    def initialize(aName,aCompany)
        @name = aName
        @company = aCompany
    end

    def set_name(aName)
        @name = aName
    end

    def get_name
        return @name
    end

    def set_company(aCompany)
        @company = aCompany
    end

    def get_company
        return @company
    end
end

class Car < Vehicle

    def initialize(aName,aCompany,aModel)
        super(aName,aCompany)
        @model = aModel
    end

    def set_model(aModel)
        @model = aModel
    end

    def get_model
        return @model
    end

end

XC90 = Car.new('SUV','Volvo','XC90')
A6 = Car.new('Hatch Back','Audi','A6')

puts("#{XC90.inspect}")
puts("#{A6.inspect}")

puts("This is a #{XC90.get_name}  made by #{XC90.get_company} and its model is #{XC90.get_model} ")

puts("This is a #{A6.get_name}  made by #{A6.get_company} and its model is #{A6.get_model} ")

XC90.set_model('XC90 Turbo')

puts("This is a #{XC90.get_name}  made by #{XC90.get_company} and its model is #{XC90.get_model} ")

