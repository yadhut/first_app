# write using syswrite method

file = File.open("text1.txt")

if(file)

    file_data = file.read
    aFile = File.new("text2.txt","r+")
    if(aFile)
        aFile.syswrite(file_data<<"Appended using < operator")
        puts("Successful!")
    else
        puts("Unable to open the write file")
    end

    
else
    puts("unable to open")
end 