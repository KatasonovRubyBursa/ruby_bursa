# require_relative	"order"
# require_relative	"manager"

class Programmer

	attr_reader	:skill, :rationality, :fatigue, :order, :manager

	def initialize(options={})
		@order				=	options[:order]
		@manager			=	options[:manager]
		@skill 				= options[:skill]
		@rationality	= options[:rationality]
		@fatigue			= options[:fatigue]
	end

end