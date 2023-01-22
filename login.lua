user = "root"
password = "IT"

redstone.setOutput("back",false)

function login()
	print(string.upper("Systeme Securite"))
	io.write("user : ")
	local userName = io.read()
	io.write("password : ")
	local passwordPass = io.read()
	
	if user == userName then 
		
		if password == passwordPass then
		
			redstone.setOutput("back",true)
			term.setBackgroundColor(colors.green)
			print("La porte est ouverte , vous pouvez y aller")
			sleep(3)
			redstone.setOutput("back",false)
			shell.exit()
			term.clear()
			term.setCursorPos(1,1)
		else
			term.setBackgroundColor(colors.red)
			print("Mauvais !")
			term.setBackgroundColor(colors.black)
			shell.exit()
			term.clear()
			term.setCursorPos(1,1)
		end		

	else
		term.setBackgroundColor(colors.red)
		print("Mauvais !")
		term.setBackgroundColor(colors.black)
		shell.exit()
		term.clear()
		term.setCursorPos(1,1)

	end

	login()
end


login()
