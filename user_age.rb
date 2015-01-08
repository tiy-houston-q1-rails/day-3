user = {first_name: "jesse",
        last_name: "wolgamott",
        age: 36,
        phone: "713-397-2814",
        email: "jwo@comal.io"}

def print_user_info(user)
  puts "Name: #{user[:first_name]} #{user[:last_name]}"
  puts "Age: #{user[:age]}"
  puts "Phone: #{user[:phone]}"
  puts "email: #{user[:email]}"
end


print_user_info user



## if we broke our rule
def print_user_info first_name, last_name, phone, age
end

print_user_info user[:first_name], user[:last_name], user[:phone], user[:age]

# with named params

def print_user_info first_name:, last_name:, phone:, age:
end

print_user_info first_name: user[:first_name], last_name: user[:last_name], phone: user[:phone], age: user[:age]
