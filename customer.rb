class Customer

	attr_reader	:requirements, :remuneration, :competence, :adequacy

	def initialize(options)
		@requirements = options[:requirements]
		@remuneration = options[:remuneration]
		@сompetence 	= options[:competence]
		@adequacy 		= options[:adequacy]
	end

end
