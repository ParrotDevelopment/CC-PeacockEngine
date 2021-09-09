local fileToSend = ...
assert(fileToSend and fs.exists(fileToSend), "Peacock requires a broadcast card file. These are usually .lua files."
local handle = fs.open(fileToSend, 'r')
local data = handle.readAll()
handle.close()
local bundle = {
    fileData = data
    fileName = fileToSend
}
rednet.broadcast(bundle, "Peacock")