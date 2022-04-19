
# begin
#     puts 'I am before the raise..'
#     raise 'An eroor haas occured'
#     puts 'I am after the raise'
# rescue
#     puts 'Im rescued'
# end
# puts 'I am after the begin block'


# begin
#     raise 'A test exception'
# rescue Exception => e
#     puts e.message
#     puts e.backtrace.inspect
# end

# we can use ensure block to run an chunk of code whether the exception caught or not
# begin
#     raise 'A test exception.'
#  rescue Exception => e
#     puts e.message
#     puts e.backtrace.inspect
#  ensure
#     puts "Ensuring execution"
#  end

# begin
#     raise 'A test exception.'
#     puts "I'm not raising exception"
#  rescue Exception => e
#     puts e.message
#     puts e.backtrace.inspect
#  else
#     puts "Congratulations-- no errors!"
#  ensure
#     puts "Ensuring execution"
#  end

def devide(num1,num2)
    begin
        return num1 / num2
    rescue => e
        puts e.message
        puts("a Number is not devisible by 0 s***thead!")
    end
end

# puts devide(5,0)

# we can handle anything by declaring inside the begin and block and save the smoooth execution flow of program
begin
    devide(5,0,4)
rescue => er
    puts("You have enterd too many arguments")
    puts(er.message)
    puts(er.backtrace.inspect)
end