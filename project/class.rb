# frozen_string_literal: true

class User
  attr_accessor :name, :email, :age

  def initialize(name, email, age)
    self.name = name
    self.email = email
    self.age = age
  end
end

# mickey = User.new
# mickey.name = 'Mickey'
# mickey.email = 'mickey@example.com'
# mickey.age = 21
# p mickey

jill = User.new('Jill', 'jill@example.com', 40)
p jill
