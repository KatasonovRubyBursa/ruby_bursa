# require_relative	"customer"
# require_relative	"programmer"
# require_relative	"manager"

class Order

	attr_reader :complexity, :clear, :deadline, :manager, :customer, :programmer

	def initialize(options={})
		@manager		=	options[:manager]
		@customer		=	options[:customer]
		@programmer	=	options[:programmer]
		@сomplexity = options[:complexity]
		@clear 			= options[:clear]
		@deadline 	= options[:deadline]
	end

end
