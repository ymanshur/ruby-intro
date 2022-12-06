# frozen_string_literal: true

class ProjectManager
  attr_accessor :name, :salary

  def initialize(name, salary)
    @name = name
    @salary = salary
  end

  def role
    'Project Manager'
  end

  def day_rate
    salary.to_f / 210 # number days of the year
  end

  def to_s
    "#{role} #{@name} $#{@salary}"
  end
end

class Developer
  attr_accessor :name, :salary

  def initialize(name, salary)
    @name = name
    @salary = salary
  end

  def role
    'Developer'
  end

  def day_rate
    salary.to_f / 210 # number days of the year
  end

  def to_s
    "#{role} #{@name} $#{@salary}"
  end
end

class Designer
  attr_accessor :name, :salary

  def initialize(name, salary)
    @name = name
    @salary = salary
  end

  def role
    'Designer'
  end

  def day_rate
    salary.to_f / 210 # number days of the year
  end

  def to_s
    "#{role} #{@name} $#{@salary}"
  end
end

class Project
  attr_accessor :name, :budget
  attr_reader :members

  def initialize(name, budget)
    @name = name
    @budget = budget
    @members = []
  end

  def total_day_rate
    sum = 0
    @members.each do |member|
      sum += member.day_rate
    end
    sum
  end

  def sorted_members
    @members.sort do |a, b|
      a.day_rate <=> b.day_rate
    end
  end
end

project = Project.new('Cafe Website', 5000)
project.members << ProjectManager.new('Dan', 100_000)
project.members << Developer.new('Manshur', 80_000)
project.members << Developer.new('Joe', 80_000)
project.members << Designer.new('Bill', 50_000)

# puts project.members
puts project.sorted_members
