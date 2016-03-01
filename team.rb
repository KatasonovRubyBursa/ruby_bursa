require_relative 'developer'
require_relative 'junior_developer'
require_relative 'senior_developer'

class Team
  
  attr_accessor :team, :arr


  def initialize(&block)
    @list = {}
    @team = []
    instance_eval &block
  end

  def priority(*dev_types)
  	dev_types.map {|i| @team << @list[i].to_a}
  	@team.flatten!
  end

  def add_task(task)
    @team.each do |dev|
     dev.add_task(task) if dev.can_add_task? 
     break
   end
  end

  def have_developers(*names)
    @list[:developers] = names.map {|name| Developer.new(name, :developer)}
  end
  
  def have_seniors(*names)
    @list[:seniors] = names.map {|name| SeniorDeveloper.new(name, :senior)}
  end

  def have_juniors(*names)
    @list[:juniors] = names.map {|name| JuniorDeveloper.new(name, :junior)}
  end

end

t = Team.new do
	have_developers 'Rashid', 'Oleg'
	have_seniors 'Kristina', 'Artem'
	have_juniors 'John', 'Vasya'

	priority :seniors, :developers, :juniors
end

p t.team
t.add_task 'asd'