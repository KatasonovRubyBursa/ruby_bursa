require_relative	"order"
require_relative	"customer"
require_relative	"programmer"
require_relative	"manager"

class	ItCOmpanySimulator

	def self.start
			order 			= Order.new(complexity: 100, clear: 100, deadline: "19.10.2019")
			customer		= Customer.new(requirements: 100, order: order, remuneration: 100, сompetence: 100, adequacy: 100)
			programmer	=	Programmer.new(customer: customer, order: order, skill: 100, rationality: 100, fatigue: 100)
			manager			=	Manager.new(customer: customer, order: order, programmer: programmer, 
				communicability: 100, ability_to_organize: 100)		
	end

end

i = ItCOmpanySimulator.start