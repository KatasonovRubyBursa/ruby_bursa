require_relative 'developer'

class SeniorDeveloper < Developer

	MAX_TASKS = 15

	def work!
		i = rand(10)
		case 
			when i % 2 == 0 && @tasks.any?
				puts "#{@name}: выполнена задача \"#{@tasks.shift}\". Осталось задач: #{@tasks.count}"
				puts "#{@name}: выполнена задача \"#{@tasks.shift}\". Осталось задач: #{@tasks.count}"
			when i % 2 != 0 && @tasks.any?
				puts "Что-то лень"
			else
				raise 'Нечего делать!'
			end
	end
end
