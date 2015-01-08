# classes (objects)
# : data + behavior

# Don't Repeat Yourself
# D.R.Y
# Keep your code DRY

class User
  attr_accessor :first_name, :last_name, :age, :phone, :email,
                :spouse, :country, :full_name

  def full_name
    [last_name, first_name].join(", ")
  end

end

# data = {first_name: "jesse",
#   last_name: "wolgamott",
#   age: 36,
#   phone: "713-397-2814",
#   email: "jwo@comal.io"}

jwo = User.new
jwo.first_name = "Jesse"
jwo.last_name = "Wolgamott"
jwo.age = 36
jwo.phone = "713-397-2814"
jwo.email = "jwo@comal.io"
jwo.country = "USA"

awo = User.new
awo.first_name = "Amanda"
awo.last_name = "Wolgamott"

#..

jwo.spouse = awo
awo.spouse = jwo



def print_user_info(user)
  puts "Name: #{user.full_name}"
  puts "Age: #{user.age}"
  puts "Phone: #{user.phone}"
  puts "email: #{user.email}"
  puts "Spouse Name: #{user.spouse.full_name}"
end

print_user_info jwo

p jwo


# puts "jwo == awo.spouse #{jwo == awo.spouse}"
