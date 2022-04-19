print("Enter your user name :")
str = gets().chomp()



def string_test(str)
    if (!/[^a-zA-Z]/.match(str))
        return true
    else
        return false
    end
end

# if string_test(str)
#     puts "trueeee"
# else
#     puts "falseee"
# end

