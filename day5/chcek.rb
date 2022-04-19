
def numeric_check(str)
    @string = str
    if @string.to_i.is_a? Numeric
        return true
    else
        return false
    end
end

print("Enter your name\n")
name = gets().chomp()
check_status = string_check(name)
puts(check_status)