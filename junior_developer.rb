require_relative	'developer'

class JuniorDeveloper < Developer

	MAX_TASKS = 5

	def add_task(task)
		if task.length > 20
			raise 'Слишком сложно!'
		else
			super
		end
	end

	def work!
		if tasks.any?
			puts "#{@name}: пытаюсь делать задачу \"#{@tasks.shift}\". Осталось задач: #{@tasks.count}"
		else
			super
		end
	end
end

