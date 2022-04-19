# def promptAndGet(prompt)
#     print prompt
#     res = readline.chomp
#     throw :quitRequested if res == "!"
#     return res
#  end
 
#  catch :quitRequested do
#     name = promptAndGet("Name: ")
#     age = promptAndGet("Age: ")
#     sex = promptAndGet("Sex: ")
#     # ..
#     # process information
#  end
#  promptAndGet("Name:")


def string_validator(str)
    if(str.class != String)
        raise StandardError.new("Its not a string ")
    end
    
    return str
end

puts string_validator(4.4)
