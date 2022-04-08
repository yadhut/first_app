class Weekend

    def weekendFinder(aDay)
        (aDay == 'saturday' or aDay == 'sunday') ?
        day = 'weekend' :
        day = 'weekday'
        return day
    end
end

obj1 = Weekend.new
x = obj1.weekendFinder('monday')
puts(x)


