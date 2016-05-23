dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(user_string, dictionary)
	word_arr = user_string.split(" ")
	dict_hash = Hash[dictionary.map { |x| [x,0]  }]
	i = 0
	while i < word_arr.length
		dict_hash.keys.each do |key| 
			if Regexp.new(key) =~ word_arr[i].downcase
				dict_hash[key] += 1
			end
		end
		i+=1		
	end
	puts dict_hash
end

substrings("below",dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
