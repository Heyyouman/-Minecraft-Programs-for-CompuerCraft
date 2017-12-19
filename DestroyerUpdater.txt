local ProgramName = "destroyer"
local PasteBin_Text_ID = "Ake0StjR"
shell.run("delete", ProgramName)
write("Deleted!\n")
shell.run("pastebin", "get", PasteBin_Text_ID, ProgramName )
write("Downloaded!\n")