class Year
	def new(test_year)
		# @year = test_year
		return self
	end
	def leap?
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