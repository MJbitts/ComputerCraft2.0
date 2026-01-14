local files = fs.list("")

for index , file in ipairs(files) do
if file ~= "rom" and file ~= "startup.lua" then
        print("Deleting: " .. file)
        fs.delete(file)
    end
end
print("User Files Cleared")

shell.run("pastebin get Mpz3enw0 DownLoads")
shell.run("DownLoads")