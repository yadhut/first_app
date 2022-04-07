class Hashes

    def firstHash
        hashCar = {
            'nisan' => 'legends in japan',
            'mitsubishi' =>'Evo9',
            'honda' => 'Nsx'
        }

        puts(hashCar)
        puts(hashCar['nisan'])
        hashCar.default = 'Nisan is my favourite'
        puts(hashCar['unknown'])
    end


end

Hash = Hashes.new
Hash.firstHash

# Hash Operations 

hash1 = {
    'key1' => 'val1','key2' => 'val2','key3' => 'val3','key4' => 'val4'
}

hash2 = {
    'key1' => 'val1','KEY_TWO' => 'val2','key3' => 'VALUE_3','key4' => 'val4'
}

p(hash1.keys &  hash2.keys)

p(hash1.values &  hash2.values)

p(hash1.keys + hash2.keys)

p(hash1.values -  hash2.values)


