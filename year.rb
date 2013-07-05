class Year
	def self.new(test_year)
		@year = test_year
		return self
	end
	def self.leap?
		if @year % 4 == 0
			if @year % 100 != 0
				return true
			elsif @year % 400 == 0
				return true
			end
		end
		return false
	end
end

class Fixnum
	def leap_year?
		year = self
		if year % 4 == 0
			if year % 100 != 0
				return true
			elsif year % 400 == 0
				return true
			end
		end
		return false
	end
end