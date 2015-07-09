
def roman_numeral num
	m_number = num/1000					#eg 2457/1000 = 2.457
	d_num = num - m_number.to_i*1000	#eg 2457 - 2*1000 = 457
	d_number = 	d_num/500				#eg 457/500 < 1
	c_num = d_num - d_number.to_i*500	#eg 457-0 = 457
	c_number = c_num/100 				#eg 457/100 = 4.57
	l_num = c_num - c_number.to_i*100 	#eg 457-400 = 57
	l_number = l_num/50 				#eg 57/50 = 1.something
	x_num = l_num - l_number.to_i*50 	#eg 57-50 = 7
	x_number = x_num/10 				#eg 7/10 = 0.7
	v_num = x_num - x_number.to_i*10  	#eg 7-0 = 7
	v_number = v_num/5 					#eg 7/5 = 1.something
	i_num = v_num - v_number.to_i*5 	#eg 7-5 = 2
	print "M"*m_number.to_i				#have tried to do actual roman numerals, which use the subtraction system all the way through, but it becomes incredibly complicated the way i was trying to do it. easy to just apply it to IV tho
	print "D"*d_number.to_i
	print "C"*c_number.to_i
	print "L"*l_number.to_i
	print "X"*x_number.to_i
	if i_num >= 4
		puts "IV"
	else
		print "V"*v_number.to_i
		puts "I"*i_num.to_i
	end	
end

puts "give me a number under 10,000"
num = gets.chomp
roman_numeral(num.to_i)