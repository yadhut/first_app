class Authenticator

    @@userData = [
        {userName: "yadhu", password: "1234"},
        {userName: "sanath", password: "0000"},
        {userName: "mishal", password: "9999"},
        {userName: "sooraj", password: "5555"},
    ]

    def user_auth(username,password)
        @@userData.each do |user|
            if(user[:userName] == username && user[:password] == password)
                print("---------->User Authentication Completed Succsussfully<------------\n")
                return user
            end
        end
        return ("You have enterd invalid credential..")
    end


    def log_in

        attempt = true
        while attempt
            print("Please enter the User Name :")
            username = gets().chomp()
            print("Please enter Password :")
            password = gets().chomp()
            user_data = user_auth(username,password)
            print("Enter (Q) to exit any other key to continue")
            input = gets().chomp().downcase()
            if input == 'q'
                attempt = false
                break
            else
                attempt = true
            end
            
        end

    end
end

auth = Authenticator.new
auth.log_in


