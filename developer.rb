class Developer

	attr_accessor :tasks

	def initialize(name)
		@name 	= name
		@tasks 	= []
	end

	def add_task(task)
		if @tasks.push(task)
			puts "#{@name}: добавлена задача \"#{@tasks.last}\". Всего в списке задач: #{@tasks.count}"
		end
	end

	# def tasks
	# 	if @tasks.any?	
	# 		@tasks.each_with_index {|task, index| "#{index.to_i + 1}: #{task}" }
	# 	end
	# end

	def work!
		if @tasks.any?
			puts "#{@name}: выполнена задача \"#{@tasks.shift}\". Осталось задач: #{@tasks.count}"
		else
			raise "Нечего делать!"
		end
	end

end

i = Developer.new("Ларри")
# i.add_task("соснуть хуйца")
# i.add_task("поесть говнеца")
# i.add_task("пернуть в автобусе")
puts i.tasks
i.work!

