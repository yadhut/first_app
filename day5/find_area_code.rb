
dial_book = {"newyork" => "212",
    "newbrunswick" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717"}

def get_city_names(ha)
    @hash = ha
    all_citys = @hash.keys
    puts(all_citys)
end

def get_area_code(somehash,city_name)
    somehash[city_name]
end



loop do
    print("Would you like to see the list of city names : y/n ")
    res = gets().chomp().downcase()
    if(res == 'n')
        puts("Thank you for using")
        break
    end
    get_city_names(dial_book)
    print("Which city's pin code you wish to know? Type same as above list :")
    city = gets().chomp()
    puts(city)
    if dial_book.has_key?(city)
        puts("The area code for #{city} is #{get_area_code(dial_book,city)}")
    else
        print("You have enterd an invalid city name..")
    end

end
