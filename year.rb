class Year
	# Original code: this works, but it's not a good way to do things
	# as it essentially overwrites base Ruby functionality
	#
	# def self.new(test_year)
	# 	@year = test_year
	# 	return self
	# end
	def initialize(test_year) # the right way to do it
		@year = test_year
	end
	def leap? # this no longer needs to be self.leap? when things are done right

		# The following (our original) code works, and may help to see how the conditions are
		# implemented one by one, but can be rewritten far more concisely
		# if @year % 4 == 0
		# 	if @year % 100 != 0
		# 		return true
		# 	elsif @year % 400 == 0
		# 		return true
		# 	end
		# end
		# return false
        #
		return @year % 4 == 0 && (@year % 100 != 0 || @year % 400 == 0)
		# all the original logic could be replaced by:
		#
		# if @year % 4 == 0 && (@year % 100 != 0 || @year % 400 == 0)
		#   return true
		# else return false
        # But once you have a structure like:
        # if condition then return true else return false
        # You might as well just write:
        # return condition
	end
end

class Fixnum
	def leap_year?
		year = self
		return year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
	end
end