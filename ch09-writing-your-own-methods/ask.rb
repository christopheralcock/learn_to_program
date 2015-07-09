def ask(question)
while true
	puts question
	reply = gets.chomp.downcase
		if reply =="yes"|| reply =="no" 
			return false
		else
			puts "Please answer \"yes\" or \"no\"."
		end		
	end	
end

ask 'Do you like eating burritos?'
ask "say yes or no"