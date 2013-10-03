def sqarray 

puts "Enter the size of the array"
n = gets.chomp.to_i
puts "enter the array elements"
arr=Array.new(n-1)

for i in (0..n-1)
arr[i]=gets.chomp.to_i
 
end

	b=Array.new  
	puts "squared array is"
	arr.map do |number|
	b=number * number
	puts b
   
	end
end  
 sqarray
  

  