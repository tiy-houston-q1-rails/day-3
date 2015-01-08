def inactivate_user(user)
end


### ... elsewhere

user_to_inactivate = User.first
inactivate_user(user_to_inactivate)
