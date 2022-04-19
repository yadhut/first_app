

$ac_details = Hash.new()
$acc_balance = Hash.new()
$ac_details = {"yadhu" => "123"}
$acc_balance = {"yadhu" => 1000}

$arr = [$ac_details,$acc_balance]

class Create_acc

    def initialize(uname)
        @username = uname
        # @password = pass
    end
end

def string_test(str)
    if (!/[^a-zA-Z]/.match(str))
        return true
    else
        return false
    end
end

def create_acc
    print("Enter the Username :")
    username = gets().chomp()
    if( string_test(username))
        print("Enter the password :")
        password = gets().chomp()
        exist = $ac_details.has_key? username
        if( exist)
            puts("user name is already exist please try with another...\n")
            puts
            return
        end
        $ac_details.merge!(username => password)
        $acc_balance.merge!(username => 0)
         # $ac_details = {username => password}
    else
        puts("Alphabets only allowded in USER NAME!")
        return
    end
  
end

class Login

    def initialize(uname)
        @username = uname
    end
end

def deposit_to_acc(uname)
    @username = uname
    curr_balc = $acc_balance[@username]
    print("Enter the amount :")
    amount = gets().chomp().to_i
    
    puts(curr_balc)
    if(curr_balc == nil)
        $acc_balance = {@username => amount}
        $acc_balance.merge!(@username => amount)
        
    else
        $acc_balance.merge!(@username => curr_balc+amount)
    end
     
    puts("Your updated Account Balance is :#{$acc_balance[@username]}")
end

def acc_balance(uname)
    @username = uname
    puts("Function called")
    puts("Your Current Account Balance is :#{$acc_balance[@username]}")
    if($acc_balance[@username] == nil)
        puts("Your Account Balance is zero please deposit some amount.")
    end

    return puts ($acc_balance[@username])

end

def transfer_amount(uname)
    @username = uname
    curr_balc = $acc_balance[@username]
    print("Enter the user name that you want to transfer :")
    target_usr = gets().chomp()
    if($acc_balance.has_key?(target_usr))
        print("Valid user\n")
        print("Enter the amount you wish to transfer, it should below your current balance #{curr_balc} :")
        trnsfr_amt = gets().chomp().to_i
        if(trnsfr_amt > curr_balc || trnsfr_amt < 0 )
            puts("Insufficent Balance! Try with Small amout")
            return
        end
        $acc_balance[@username] = curr_balc - trnsfr_amt
        target_usr_balnc = $acc_balance[target_usr]
        $acc_balance[target_usr] = trnsfr_amt + target_usr_balnc
        puts("----------->Transfer Completed Succsusfully<-------------")
    else
        print("user name is invalid try with valid username \n")
    end
end


def login_to_acc
    print("Enter your user exixting User name :")
    username = gets().chomp()
    print("Enter your existing Password :")
    password = gets().chomp()
    puts("Just for sake of easyness #{$ac_details}")
    puts
    $ac_details.each do |uname,pass|
        if(username == uname)
            if(password == pass)
                puts("---------> Log in verification completed <----------------")
                opt = ''
                until opt == 'q' do
                    puts("Check Balance (B) \n Deposit (D) \n Log out (Q) \n Transfer Amount (T)")
                    print("=> ")
                    opt = gets[0].chr().downcase()
                    case opt
                        when 'b'
                            acc_balance(username)
                        when 'd'
                            deposit_to_acc(username)
                        when 't'
                            transfer_amount(username)

                    end
                end

            end
                
        elsif(!$ac_details.has_key?(username))
            print("You have enterd incorrect credential. Please try with valid details\n")
        end
    end
    
end

# acc = Create_acc.new(create_acc() )
# old_ac = Login.new( login_to_acc() )



# class Deposite_to_acc

#     def initialize(uname,amt)
#         @username = uname
#         @amout = amt
#         # @@acc_balance = {@username => @amout}
#     end
# end

# def deposit_to_acc
#     print("Enter the username :")
#     username = gets().chomp()
#     print("Enter the amount :")
#     amount = gets().chomp().to_i
    # @username = uname
    # @amout = amt

    # @@acc_balance = {@username => @amout}
    # puts(@@acc_balance)
# end
# def acc_balance(uname)
#         @username = uname
#         puts @@acc_balance[@username]
#     end
    

# Fed = Bank.new()
# Fed.create_acc("Yadhu","123")
# Fed.create_acc("Sanath","456")
# Fed.deposit_to_acc("Yadhu","1000")
# Fed.acc_balance("Yadhu")


ans = ''
until ans == 'q' do

    puts("Create Account (C)\n Log In to Acc (L) \n Quit (Q)")
    print("=>")
    ans = gets[0].chr().downcase()

    case ans
        when 'c' 
            Create_acc.new( create_acc() )
            puts($ac_details)
        
        when 'l'
            Login.new( login_to_acc() )

    end
end
