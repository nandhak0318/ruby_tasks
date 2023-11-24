
fileObj = File.new("ab.txt","r")
temp =  fileObj.read()
newFile = File.new("bb.txt","w+")
newFile.syswrite(temp)

fileObj.close()
newFile.close()