class Vehicle
    def initialize(aName,aCompany)
        @name = aName
        @company = aCompany
    end

    #Here we are created get and set method using a diffrent syntax
    #we are just crteating a variable and assiging the function to that and passing the value inside the parathesis

    def name=(aName)
    @name =  aName
    end

    def name
    return @name
    end
#we should have place the = sign just after the paramenter and parathasis
    def company=(aCompany)
    @company = aCompany
    end

    def company
    return @company
    end
end

car = Vehicle.new('car','KIA')
print(car.name)
car.name = "Compus"
car.company = "Jeep"
print(car.name)

print(car.company)