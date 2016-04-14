animals = ['rat', 'dragon', 'horse']
starsigns = ['aries', 'taurus', 'gemini']

puts "The animals in the list are:"
animals.each do |animal|
	puts animal
end	

puts "The starsigns are:"
starsigns.each do |ss|
	puts ss

end

#animals.each_with_index do |animal, index| 
#puts (index + 1).to_s + ': ' + animal'
#end