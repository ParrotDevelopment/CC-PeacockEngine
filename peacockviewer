rednet.open("top")

while true do
    local senderID, message, protocol = rednet.receive("Peacock")
    print("Broadcast sent from", senderID)
    if type(message) == "table" and type(message.fileData) == "string" and type(message.fileName) == "string" then
        local handle = fs.open(message.fileData, 'w')
        handle.write(message.fileData)
        handle.close()
        print(string.format("%d chars received and wrote into Peacock Advanced Memory (%s)", #message.fileData, message.fileName))
        fs.open(message.fileName)
    end
end