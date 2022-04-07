class Itrator

    def itratorFun
        range1 = (1..20)
        puts(range1.each {
            |e1| print e1, ','
        })

        puts(range1.inspect)
    end
end

itrate = Itrator.new
itrate.itratorFun
