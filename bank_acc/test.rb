# $acc_details = [
#     {"username" => "yadhu","password" => "123","balance"=> 0,"ac_no" => 1 },
#     {"username" => "sanath","password" => "111","balance"=> 0,"ac_no" => 2 },
#     {"username" => "mishal","password" => "123","balance"=> 0,"ac_no" => 3},
# ]

# def check_user(uname)
#     $acc_details.each do |user|
#         if(user.has_value? uname)
#             puts("user found")
#             puts(user)
#             return true
        
#         end

#     end
#     return false
# end

# def get_exist_user(uname)
#     $acc_details.each do |user|
#         if(user.has_value? uname)
#             # puts("user found")
#             # puts(user)
#             return user
#         end
#     end
#     puts("user not found!")
# end

# def deposit_to_acc(uname)
#     @username = uname
#     user = get_exist_user(@username)
#     curr_balc = user["balance"]
#     print("Enter the amount :")
#     amount = gets().chomp().to_i
#     if(amount <0 )
#         puts("Enter a valid Amount to deposite..")
#         return
#     else
#         user["balance"] = curr_balc+amount
#     end
# end

# exixt = check_user("sanath")
# puts(exixt)


# user = get_exist_user("a")
# puts(user["password"])

# amt = deposit_to_acc("yadhu")
# puts(amt)
# puts($acc_details)


# def valid_amount(curr,targ)
#     @curr_balc = curr
#     @trnsfr_amt = targ
#     if(@trnsfr_amt > @curr_balc || @trnsfr_amt < 0 )
#         puts("invalid input || Insufficent Balance!")
#         return false
#     else
#         return true
#     end
# end
# puts valid_amount(1000,-200)
# print("enter the numver")
# number = gets().chomp()
# if number.match(/\d/)
#     print("somethng")
# else
#     puts "failed"
# end

def show_account(usrname,user_hash)
    @username = usrname
    @user = user_hash

    puts("---------> Log in verification completed <----------------")
    puts()
    puts("Account Details")
    puts("ACCOUNT NO :000000#{@user["ac_no"]} ")
    puts
    puts("ACCOUNT HOLDER NAME :#{@user["username"]}")
    puts
    opt = ''
    until opt == 'q' do
        puts("Check Balance (B) \n Deposit (D) \n Log out (Q) \n Transfer Amount (T)")
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
