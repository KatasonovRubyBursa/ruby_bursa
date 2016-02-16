class Developer

	MAX_TASKS = 10

	attr_accessor :tasks

	def initialize(name)
		@name 	= name
		@tasks 	= []
	end

	def add_task(task)
		if @tasks.count < MAX_TASKS
				@tasks.push(task)
				puts "#{@name}: добавлена задача \"#{@tasks.last}\". Всего в списке задач: #{@tasks.count}"	
		else
			raise 'Слишком много работы!'
		end
	end

	def tasks
		@tasks.map.with_index do |task, index|
			arr = []
			arr.push "#{index + 1}. #{task}"
		end
	end

	def work!
		if @tasks.any?
			puts "#{@name}: выполнена задача \"#{@tasks.shift}\". Осталось задач: #{@tasks.count}"
		else
			raise 'Нечего делать!'
		end
	end

	def status
		if @tasks.count > MAX_TASKS
			'занят'
		elsif @tasks.count == 0
			'свободен'
		else
			'работаю'
		end
	end

	def can_add_task?
		if @tasks.count < MAX_TASKS
			true
		else
			false
		end
	end

	def can_work?
		if @tasks.any?
			true
		else
			false
		end
	end

end