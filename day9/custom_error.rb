# class NotString < StandardError
#     def initialize 
#         super("The input is given is not a String..")
#     end
# end

# def string_validator(str)

#     if(str.class != String)
#         raise NotString
#         # puts NotString.backtrace.inspect
#     end
#     return str
# end

# puts string_validator(44)



class NoEvenNumber < StandardError
    attr_accessor :array
    def initialize(array)
        super("No even number found")
        @array = array
    end
end


def even_number(array)
    unless array.is_a?(Array)
        raise ArgumentError
    end

    if(array.length == 0)
        raise StandardError.new("array length is 0 ")
    end
    even_array = array.find_all {|e| e.to_i % 2 == 0}
    # puts even_array.class

    if(even_array.length == 0)
        raise NoEvenNumber.new(array)
    end
    return even_array
end

begin
    puts even_number([1,2,3,4,5,6])
rescue => e
    puts(e.message)
    
end
