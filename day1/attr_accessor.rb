#initializing morethan one attribute at a time in attribute accessor methods

class Phone
    attr_reader :brand, :model
    attr_writer(:brand, :model)
    attr_accessor(:price, :yearOfProduction)
end

iphone = Phone.new
iphone.brand = "Apple"
iphone.model = "12 pro"
iphone.price = 1000
iphone.yearOfProduction = 2021

puts("#{iphone.brand} #{iphone.model}  #{iphone.price}  #{iphone.yearOfProduction} ")