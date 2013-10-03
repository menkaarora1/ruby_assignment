def players
player_hash = { }	# start with an empty hash
 
 input = ""
 name = ""
 occ =""
 
 print "Enter name, occ; or just ENTER to quit: "
 input = gets.chomp
 while input != "" do
 	(name,occ ) = input.split(",")
 	player_hash[name] = occ
 	print "Enter name, occ; or just ENTER to quit: "
 	input = gets.chomp
 end
	puts "Here are the hash contents:"
	player_hash.each do |key,value|
 	puts "#{key} is a #{value} ."
 end
end
players()
 