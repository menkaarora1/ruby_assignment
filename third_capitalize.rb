def capitalname()
puts "enter your name"
str1=gets
str2=String.new
i=0
		begin
		str3=str1.slice(i,2)
	
		str2<<str3.capitalize
		i=i+2
		end  while i<str1.length
		
		puts "#{str2}"
		end
		capitalname()
