# def is_numeric()
#     print("Enter a number :")
#     num = gets().chomp()
#     if(num.to_f.is_a? Numeric)
#         puts("yes it is ")
#     else
#         puts("sorry not")
#     end

# end

# is_numeric()

puts "Enter numeric value: "
result = gets.chomp

def string_test(result)
    begin
        result =Float(result) ||Integer(result)
        return true
      rescue ArgumentError, TypeError
        return false  
        # handle error, maybe call `exit`? 
    end
end

puts string_test(result)