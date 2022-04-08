# require './module'
module First

    def sayHi
        puts("Hi nice to meet you buddy!")
    end
end


module Second

    def sayHi
        puts("get loost from here!")
    end
end

class Third

    include First
    include Second
    # include MyFirstModule

end

obj1 = Third.new
obj1.sayHi
