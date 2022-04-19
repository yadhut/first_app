aFile = File.new("text1.txt","r+")
if(aFile)
    aFile.each_byte{ |ch| putc ch; putc ?.}
else
    puts("Unable to open!!")
end
