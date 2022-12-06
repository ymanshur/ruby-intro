# frozen_string_literal: true

# The member (of Project) class
class Member
  attr_accessor :name, :salary

  def initialize(name, salary)
    @name = name
    @salary = salary
  end

  def day_rate
    salary.to_f / 210 # number days of the year
  end

  def to_s
    "#{role} #{@name} $#{@salary}"
  end
end

# The project manager member (of Project) class
class ProjectManager < Member
  def role
    'Project Manager'
  end
end

# The developer member (of Project) class
class Developer < Member
  def role
    'Developer'
  end
end

# The designer member (of Project) class
class Designer < Member
  def role
    'Designer'
  end
end

# The project class
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
