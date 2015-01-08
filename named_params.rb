# named parameters
# ruby 2.1+
#
# def full_name(first_name, last_name)
#   [last_name, first_name].join(", ")
# end
#
# full_name "jesse", "wolgamott"

def full_name(first_name: , last_name: )
  puts [last_name, first_name].join(", ")
end

full_name last_name: "wolgamott", first_name: "jesse"
