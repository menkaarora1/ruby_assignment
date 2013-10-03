class Student
	  
      @stu_id
      @stu_name
      @stu_age
	  @stu_gender
		def setid(value)
		@stu_id=value
		end
		def getid()
		@stu_id
		end
	    def setname(value)
		@stu_name=value
		end
		def getname()
		@stu_name 
		end
	    def setage(value)
		@stu_age=value
		end
		def getage()
		@stu_age
		end
	    def setgender(value)
		@stu_gender=value
		end
		
		def getgender()
		 @stu_gender
		end
		
		def sortdata(arr)
		puts "enter choice for sorting"
		puts "press 1 to sort by name"
		puts "press 2 to sort by age"
		puts "press 3 to sort by gender"
		choice=gets
		if(choice.match("1"))
			arr.sort!{|p1,p2| p1.getname() <=> p2.getname()}
			arr.each do |i|
			puts i.getname().to_s + i.getage().to_s  + i.getgender().to_s + i.getid().to_s
			end
		end
		if(choice.match("2"))
			arr.sort!{|p1,p2| p1.getage() <=> p2.getage()}
			arr.each do |i|
			puts i.getage().to_s + i.getname().to_s + i.getgender().to_s  + i.getid().to_s
			end
		end
		if(choice.match("3"))
			arr.sort!{|p1,p2| p1.getgender() <=> p2.getgender()}
			arr.each do |i|
			puts i.getgender().to_s + i.getname().to_s + i.getage().to_s  + i.getid().to_s
			end
		end
		end
 
end
puts "enter y to continue,n to exit"
choice="y"
choice=gets
arr=Array.new
while(choice.match("y")) do
	obj=Student.new
	
	puts "enter your name"
	name=gets
	obj.setname(name)
	puts "enter your id"
	id=gets
	obj.setid(id)
 
	puts "enter your age"
	age=gets
	obj.setage(age)
 
	puts "enter your gender"
	gender=gets
	obj.setgender(gender)
	arr.push(obj)
		


	puts arr[0].getname()
	puts "Do you want to continue(y/n)"
	choice=gets
end
objsort=Student.new
objsort.sortdata(arr)


