input = ''
puts('How much would you like to earn per day')
while input != 'q'
    puts('Enter a number between 1 and 1000 or enter q to quit')
    print("?-")
    input = gets().chomp()
    if input == 'q'
        puts('bye!')
    elsif input.to_i > 1000
        puts('Please enter a number less than 1000')
    elsif input.to_i > 800
        puts('This is a high rate of pay')
    elsif input.to_i <= 800
        puts("we have a deal")
    end
end
