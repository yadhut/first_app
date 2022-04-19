class Func

    def string_test(result)
        begin
            result =Float(result) ||Integer(result)
            return true
          rescue ArgumentError, TypeError
            return false  
            # handle error, maybe call `exit`? 
        end
    end

    def addition
        print("Enter The first operand :")
        num1 = gets().chomp()
        if !(string_test(num1))
            puts("Invalid Input Try Again!..")
            addition()
            return
        end
        print("Enter the second operand :")
        num2 = gets().chomp()
        if !(string_test(num2))
            puts("Invalid Input Try Again!..")
            addition()
            return
        end
        print("result :")
        puts num1.to_f + num2.to_f
    end

    def subtraction
        print("Enter The first operand :")
        num1 = gets().chomp()
        if !(string_test(num1))
            puts("Invalid Input Try Again!..")
            subtraction()
            return
        end
        print("Enter the second operand :")
        num2 = gets().chomp()
        if !(string_test(num2))
            puts("Invalid Input Try Again!..")
            subtraction()
            return
        end
        print("result :")
        puts num1.to_f - num2.to_f
    end

    def multiplication
        print("Enter The first operand :")
        num1 = gets().chomp()
        if !(string_test(num1))
            puts("Invalid Input Try Again!..")
            multiplication()
            return
        end
        print("Enter the second operand :")
        num2 = gets().chomp()
        if !(string_test(num2))
            puts("Invalid Input Try Again!..")
            multiplication()
            return
        end
        print("result :")
        puts num1.to_f * num2.to_f
    end

    def division
        print("Enter The first operand :")
        num1 = gets().chomp()
        if !(string_test(num1))
            puts("Invalid Input Try Again!..")
            division()
            return
        end
        print("Enter the second operand :")
        num2 = gets().chomp()
        if !(string_test(num2))
            puts("Invalid Input Try Again!..")
            division()
            return
        end
        if(num2.to_f == 0.0)
            puts("You can't divide any number by zero..")
            division()
            return
        end
        print("result :")
        puts num1.to_f / num2.to_f
    end

    def reminder
        print("Enter The first operand :")
        num1 = gets().chomp()
        if !(string_test(num1))
            puts("Invalid Input Try Again!..")
            reminder()
            return
        end
        print("Enter the second operand :")
        num2 = gets().chomp()
        if !(string_test(num2))
            puts("Invalid Input Try Again!..")
            reminder()
            return
        end
        print("result :")
        puts num1.to_f % num2.to_f
    end
end


class Calc < Func
    

    def calculator  
        ans = ''
        until ans == 'q'
            puts("Choose your calculation \nPress (A) + Addition, \nPress (S) - Subtraction, \nPress (M) * Multiplication, \nPress (D) / Division, \nPress (R) % Reminder, \nPress (Q) X Exit\n")
            ans = gets[0].chr().downcase()

            case ans
                when 'a'
                    addition()
                when 's'
                    subtraction()
                when 'm'
                    multiplication()
                when 'd'
                    division()
                when 'r'
                    reminder()
                when 'q'
                    print("Thank you for using..\n")
                else
                    print("You have enterd an Invalid operation..Try Again!\n")

             end
            
        end
    end
end
ob1 = Calc.new
ob1.calculator()



    