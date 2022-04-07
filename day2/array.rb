class Arrays

    def singleArray
        a1 = [1,'two',3.0,4]
        puts(a1[0])
        puts(a1[1])
        puts(a1[2])
        puts(a1[3])
#we can also declare an array is this manner without using quotation marks and it will assume it like this ["Hi", "Yadhu", "welcome", "to", "antierSolutions"]
        w = %w( Hi Yadhu welcome to antierSolutions)
        puts("#{w}")
    end
end

array = Arrays.new
array.singleArray

