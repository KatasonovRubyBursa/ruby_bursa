class Order

	attr_reader :complexity, :clear, :deadline

	def initialize(options)
		@сomplexity = options[:complexity]
		@clear 			= options[:clear]
		@deadline 	= options[:deadline]
	end

end
