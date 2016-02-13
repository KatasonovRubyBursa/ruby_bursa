class Programmer

	attr_reader	:skill, :rationality, :fatigue

	def initialize(options)
		@skill 				= options[:skill]
		@rationality	= options[:rationality]
		@fatigue			= options[:fatigue]
	end

end