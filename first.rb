# Define a method to greet the user
def greet(name)
    puts "Hello, #{name}! Welcome to the Ruby program."
  end
  
  # Prompt the user to enter their name
  print "Enter your name: "
  user_name = gets.chomp
  
  # Call the greet method with the user's name
  greet(user_name)
  