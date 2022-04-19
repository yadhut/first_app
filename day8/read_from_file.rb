
# aFile = File.new("text1.txt","r")


# if aFile
#     content = aFile.sysread()
#     puts(content)
    
# else
#     puts("unable to open the file!")
# end

# diffrent way to read

file = File.open("text1.txt")
file_data = file.read
puts(file_data)

file.close()

# to read line by line

file = File.open("text1.txt")
file_data = file.readlines.map(&:chomp)
puts(file_data)
file.close()
