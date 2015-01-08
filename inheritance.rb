class Person
  attr_accessor :first_name, :last_name, :age, :phone, :email,
  :spouse, :country, :full_name

  def full_name
    [last_name, first_name].join(", ")
  end
end

class Employee < Person
  def full_name
    "Employee: #{super}"
  end
end

class Boss < Employee

  def fire!(user)
    puts "#{user.full_name} -> YA FIYAD"
  end

  def full_name
    "Boss: #{super}"
  end
end

awo = Person.new
awo.first_name = "Amanda"
awo.last_name = "Wolgamott"

jwo = Employee.new
jwo.first_name = "Jesse"
jwo.last_name = "Wolgamott"
jwo.age = 36
jwo.phone = "713-397-2814"
jwo.email = "jwo@comal.io"
jwo.country = "USA"

mason = Boss.new
mason.first_name = "Mason"
mason.last_name = "IDK"

# puts awo.full_name
# puts mason.full_name
#
# mason.fire!(jwo)

# "respond_to?" ---> Duck Typing
# * If it walks like a duck, quack like a duck, and looks like a duck,
#   it's probably a duck
# AND SO we treat it like a duck

people = [jwo, awo, mason]
people.each do |person|
  puts person.full_name
  if person.respond_to? :fire!
  # if person.is_a? Boss
    puts "this person #{person.full_name} can fire people. WATCH OUT"
  end
end
