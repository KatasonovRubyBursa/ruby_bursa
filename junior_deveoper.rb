require_relative	'developer'

class JuniorDeveloper < Developer

	MAX_TASKS = 5

	def add_task(task)
		super
		if task.length > 20
			raise 'Слишком сложно!'
		# elsif @tasks.count < MAX_TASKS
		# 	super
		# else
		# 	super
			# raise 'Слишком много работы!'
		end
	end

end

o = JuniorDeveloper.new('Kostya')

o.add_task('das')
o.add_task('dsdasadasdsadaas')
o.add_task('dsdasadasdsadaas')
o.add_task('dsdasadasdsadaas')
o.add_task('dsdasadasdsadaas')
o.add_task('dsdasadasdsadaas')
o.add_task('dsdasadasdsadaas')
o.add_task('dsdasadasdsadaas')
o.add_task('das')
o.add_task('das')
o.add_task('das')
o.add_task('das')

puts o.status
