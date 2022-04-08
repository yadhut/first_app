$sleepHours = 7

def tired
    if $sleepHours >= 8
        return false
    else
        return true
    end
end

def sleep
    puts("z" * $sleepHours)
end

def snore
    puts("snore")
end

# case unless 

begin
    sleep
    snore
end unless not tired

# case if 
begin
    sleep
    snore
end if tired

