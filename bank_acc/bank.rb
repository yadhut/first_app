$acc_details = [
    {"username" => "yadhu","password" => "123","balance"=> 0 ,"ac_no" => 1},
    {"username" => "sanath","password" => "111","balance"=> 0 ,"ac_no" => 2},
]
$acc_no = 2

class Create_acc

    def initialize(uname)
        @username = uname
    end
end

def string_test(str)
    if (!/[^a-zA-Z]/.match(str))
        return true
    else
        return false
    end
end

def check_user(uname)
    $acc_details.each do |user|
        if(user.has_value? uname)
            puts("username is valid")
            return true
        end
    end
    return false
end

def get_exist_user(uname)
    $acc_details.each do |user|
        if(user.has_value? uname)
            # puts("user found")
            # puts(user)
            return user
        end
    end
    puts("user not found!")
end

def check_self_depo(u1,u2)
    @user1 = u1
    @target_user = u2
    if(@user1 == @target_user)
        puts("Its not possible to transfer amout to self!")
        return true
    else
        return false
    end
end
    
def print_customers(list)
    @hash = list
    @hash.each do |user|
        puts("Account holder name is :#{user["username"]} Account Number is :00000#{user["ac_no"]}")
    end
end



def create_acc
    print("Enter the Username :")
    username = gets().chomp()
    if( string_test(username))
        print("Enter the password :")
        password = gets().chomp()
        exist = check_user(username)
        if(exist)
            puts("user name is already exist please try with another...\n")
            puts
            return
        end
        
        $acc_no +=1
        user_hash = {"username" => username,"password" => password,"balance"=> 0,"ac_no" => $acc_no }
        $acc_details.push(user_hash)
        show_account(username,user_hash)
    else
        puts("Alphabets only allowded in USER NAME!")
        return
    end
end

def acc_balance(uname)
    @username = uname
    user = get_exist_user(uname)
    puts("Your current Balance is :#{user["balance"]}")
end

def valid_amount(curr,targ)
    @curr_balc = curr
    @trnsfr_amt = targ
    if(@trnsfr_amt > @curr_balc || @trnsfr_amt < 0 )
        puts("invalid input || Insufficent Balance!")
        return true
    else
        return false
    end
end


def transfer_amount(uname)
    @username = uname
    user = get_exist_user(@username)
    curr_balc = user["balance"]
    print("Enter the user name that you want to transfer :")
    target_usr = gets().chomp()
    if check_self_depo(@username,target_usr)
        return
    end
    flag = check_user(target_usr)
    targ_u = get_exist_user(target_usr)
    if flag
        puts("User Validated")
        print("Enter the amount you wish to transfer, it should below your current balance #{curr_balc} :")
        trnsfr_amt = gets().chomp().to_i
        # if(trnsfr_amt > curr_balc || trnsfr_amt < 0 )
        #     puts("invalid input || Insufficent Balance!")
        #     return
        # end
        return if valid_amount(curr_balc,trnsfr_amt)
        user["balance"] = curr_balc - trnsfr_amt
        target_usr_balnc = targ_u["balance"]
        targ_u["balance"] = target_usr_balnc + trnsfr_amt
        puts("---->Amount transfer succsussfully<-----")
    else
        print("user name is invalid try with valid username \n")
    end
end

def deposit_to_acc(uname)
    @username = uname
    user = get_exist_user(@username)
    curr_balc = user["balance"]
    print("Enter the amount :")
    amount = gets().chomp().to_f

    if(amount <=0 )
        puts("Enter a valid Amount to deposite..")
        deposit_to_acc(@username)
    else
        user["balance"] = curr_balc+amount
        puts("Your updated Account Balance is :#{user["balance"]}")
    end
end

class Login

    def initialize(uname)
        @username = uname
    end
end


def show_account(usrname,user_hash)
    @username = usrname
    @user = user_hash

    puts("\n---------> WELCOME #{@user["username"].upcase}  <----------------\n")
    puts("Account Details\n")
    puts("ACCOUNT NO :000000#{@user["ac_no"]} \n")
    puts("ACCOUNT HOLDER NAME :#{@user["username"].upcase}\n")
    opt = ''
    until opt == 'q' do
        puts("\n Check Balance (B) \n Deposit (D) \n Log out (Q) \n Transfer Amount (T)")
        print("=> ")
        opt = gets[0].chr().downcase()
        case opt
            when 'b'
                acc_balance(@username)
            when 'd'
                deposit_to_acc(@username)
            when 't'
                transfer_amount(@username)        
        end
    end
end

def login_to_acc
    print("Enter your user exixting User name :")
    username = gets().chomp()
    print("Enter your existing Password :")
    password = gets().chomp()
    flag = check_user(username)
    if(flag)
        user = get_exist_user(username)
        if(user["password"] == password)
            puts("---------> Log in verification completed <----------------")
            puts
            show_account(username,user)
            # puts()
            # puts("Account Details")
            # puts("ACCOUNT NO :000000#{user["ac_no"]} ")
            # puts
            # puts("ACCOUNT HOLDER NAME :#{user["username"]}")
            # puts
            # opt = ''
            # until opt == 'q' do
            #     puts("Check Balance (B) \n Deposit (D) \n Log out (Q) \n Transfer Amount (T)")
            #     print("=> ")
            #     opt = gets[0].chr().downcase()
            #     case opt
            #         when 'b'
            #             acc_balance(username)
            #         when 'd'
            #             deposit_to_acc(username)
            #         when 't'
            #             transfer_amount(username)
            #     end
            # end     
        else
            puts("You have enterd incorrect credential. Please try with valid details\n")
        end
    else
        puts("User doesn't exist")
    end
end

ans = ''
until ans == 'q' do

    puts("\n Create Account (C)\n Log In to Acc (L) \n Quit (Q) \n Display Customers (D)\n")
    print("\n=>")
    ans = gets[0].chr().downcase()

    case ans
        when 'c' 
            Create_acc.new( create_acc() )
        
        when 'l'
            Login.new( login_to_acc() )

        when 'd'
            print_customers($acc_details)

    end
end