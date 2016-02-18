class Developer

	MAX_TASKS = 10

	attr_accessor :tasks

	def initialize(name)
		@name 	= name
		@tasks 	= []
	end

	def max_tasks
		self.class::MAX_TASKS
	end

	def add_task(task)
		if @tasks.count < max_tasks
			@tasks.push(task)
			puts "#{@name}: добавлена задача \"#{@tasks.last}\". Всего в списке задач: #{@tasks.count}"	
		else
			raise 'Слишком много работы!'
		end
	end

	def tasks
		@tasks.map.with_index {|task, index| "#{index + 1}. #{task}"}
	end

	def work!
		if @tasks.any?
			puts "#{@name}: выполнена задача \"#{@tasks.shift}\". Осталось задач: #{@tasks.count}"
		else
			raise 'Нечего делать!'
		end
	end

	def status
		if can_add_task? 	== false
			'занят'
		elsif can_work? 	== false
			'свободен'
		else
			'работаю'
		end
	end

	def can_add_task?
		@tasks.count < max_tasks
	end

	def can_work?
		@tasks.any?
	end
end

d = Developer.new('Ларри')
d.add_task('yo')
d.add_task('yo')
d.add_task('yo')
d.add_task('yo')
d.add_task('yo')
d.add_task('yo')
d.add_task('yo')
d.add_task('yo')
d.add_task('yo')
d.add_task('yo')
puts d.status