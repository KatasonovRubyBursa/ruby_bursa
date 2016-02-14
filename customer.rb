# require_relative	"order"
# require_relative	"manager"

class Customer

	attr_reader	:requirements, :remuneration, :competence, :adequacy, :order,	:manager

	def initialize(options={})
		@manager			=	options[:manager]
		@order				= options[:order]
		@requirements = options[:requirements]
		@remuneration = options[:remuneration]
		@сompetence 	= options[:competence]
		@adequacy 		= options[:adequacy]
	end

end
