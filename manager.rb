# require_relative	"order"
# require_relative	"customer"
# require_relative	"programmer"

class Manager

	attr_reader	:communicability, :ability_to_organize, :order, :customer, :programmer

	def initialize(options={})
		@programmer						=	options[:programmer]
		@customer							=	options[:customer]
		@order								=	options[:order]
		@communicability 			= options[:communicability]
		@ability_to_organize	= options[:ability_to_organize]
	end

end