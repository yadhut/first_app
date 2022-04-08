require 'yaml'

$cd_arr = Array.new

$fn = 'cd_db.yml'

class CD

    def initialize( arr )
        @name   = arr[0]
        @artist = arr[1]
        @num_tracks = arr[2]
    end

    def getdetails
        return [@name, @artist, @num_tracks]
    end

end

class PopCD < CD
    
    def initialize( arr )
        super( arr )
        @genre = arr[3]
    end

    def getdetails
        return(super << @genre )
    end
end


class ClassicalCD < CD

    def initialize( arr )
        super( arr )
        @conductor = arr[3]
        @composer = arr[4]
    end

    def getdetails
        return(super <<@conductor << @composer )
    end

end

def otherCD
    print("Enter CD name: ")
    cd_name = gets().chomp()
    print("enter artist name: ")
    a_name = gets().chomp()
    print("Enter of tracks: ")
    num_tracks = gets().chomp().to_i
    return [cd_name, a_name, num_tracks]
end

def classicCD
    cdInfo = otherCD
    print("Enter conductor's name: ")
    con_name = gets().chomp()
    print("Enter composer name: ")
    comp_name = gets().chomp()
    cdInfo << con_name << comp_name
    return cdInfo
end

def popCD
    cdInfo = otherCD
    print("Enter gener of the musoc: ")
    gener = gets().chomp()
    cdInfo << gener
    return cdInfo
end

def addCD (aCD)
    $cd_arr << aCD
end

def saveDB
    File.open( $fn, 'w'){
        |f|
        f.write($cd_arr.yaml)
    }
end

def loadDB
    input_data = File.read( $fn )
    $cd_arr = YAML::load (input_data)
end

def showData
    puts( $cd_arr.to_yaml )
end

if File.exist?( $fn ) then
    loadDB
    showData
else
    puts("the file #{fn} cannot be found.")
end


ans = ''

until ans == 'q' do
    puts("Create (P)op CD (C)lassical CD, (O)ther CD - (S)ave or (Q)uit?")
    print("> ")
    ans = gets[0].chr().downcase()
    case ans 
	when 'p' then addCD( PopCD.new( popCD() ) )
	when 'c' then addCD( ClassicalCD.new( classicCD() ) )
	when 'o' then addCD( CD.new( otherCD() ) )
    when 's' then saveDB
  end
  showData
end