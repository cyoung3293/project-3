dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(user_string, dictionary)
	word_arr = user_string.split(" ")
	dict_hash = Hash[dictionary.map { |x| [x,0]  }]
	i = 0
	while i < word_arr.length
		dict_hash.each {|key,value| 
			if Regexp.new(key) =~ word_arr[i]
				value += 1
			end
		}	
		i+=1		
	end
	puts dict_hash
end

substrings("below",dictionary)
