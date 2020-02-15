def my_function(first_argument, named_argument: 'default value')
  puts "First argument : #{first_argument}"
  puts "Named argument : #{named_argument}"
end

my_function('test')
puts "\n"

my_function('pouet', named_argument: 'en deuxième')
puts "\n"

my_function(named_argument: 'en premier')