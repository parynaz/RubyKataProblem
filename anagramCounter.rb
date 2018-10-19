file='words.txt'
i = 0
hashtable = Hash.new

File.readlines(file).each do |line|
sortedLine = line.chars.sort.join

if (hashtable.has_key?(sortedLine.to_s) == false)
	array = [line]
	hashtable[sortedLine.to_s] = array
 
elsif (hashtable.key?(sortedLine.to_s) == true)
	array = hashtable[sortedLine.to_s]
	array.push(line)
	hashtable[sortedLine.to_s] = array
end
i = i+1
end

anagramCounter = 0

hashtable.each do |key, values|
	if (values.length > 1)
		anagramCounter = anagramCounter+values.length.to_i
	end
	
	values.each do |value|
		print value.chomp + " "
end
print "\n"
end

print "Total number of words processed: " + i.to_s
print "\n"
print "Total number of anagrams: " + anagramCounter.to_s
print "\n"
