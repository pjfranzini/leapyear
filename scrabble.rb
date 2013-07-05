class Scrabble
	def self.score(word)
		score_table = Hash.new
		score_table.default = 1

		score_table ["q"] = 10
		score_table ["z"] = 10
		score_table ["j"] = 8
		score_table ["x"] = 8
		score_table ["k"] = 5
		score_table ["f"] = 4
		score_table ["h"] = 4
		score_table ["v"] = 4
		score_table ["w"] = 4
		score_table ["y"] = 4
		score_table ["b"] = 3
		score_table ["c"] = 3
		score_table ["m"] = 3
		score_table ["p"] = 3
		score_table ["d"] = 2
		score_table ["g"] = 2	
		
		counter = 0
		your_score = 0

		word.length.times do
			puts "#{counter} #{word[counter]} #{score_table[word[counter]]}"
			your_score += score_table[word[counter]]	
			counter += 1

		end
		return your_score	
	end
end