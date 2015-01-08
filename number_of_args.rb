x = "foo"
y = "bar"
z = "bat"
a = "yolo"

def concat(y, x, a, z)
  puts y + x + a + z
end

concat(x, y, z, a)

# Rule of 0,1,2
# Methods shall only have either 0, 1, or 2 arguments
# because: "it's too hard for our puny brains to keep the ordering right"
