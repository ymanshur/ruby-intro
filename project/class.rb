# frozen_string_literal: true

# The user class
class User
  attr_accessor :email, :age

  def initialize(name, email, age)
    self.name = name # @name is instance variable
    self.email = email
    self.age = age
  end

  def to_s
    "<#{@email}>"
  end

  def inspect
    "#{@name}, #{@age}, #{@email}"
  end

  # Setter
  def name=(name)
    @name = name.downcase
  end

  # Getter
  attr_reader :name

  # need bang '!' because the method actually changing something about the object
  def celebrate_birthday!
    puts 'Happy Birthday!'
    self.age += 1
  end
end

# mickey = User.new
# mickey.name = 'Mickey'
# mickey.email = 'mickey@example.com'
# mickey.age = 21
# p mickey

jill = User.new('Jill', 'jill@example.com', 40)
p jill

jill.celebrate_birthday!
puts jill
