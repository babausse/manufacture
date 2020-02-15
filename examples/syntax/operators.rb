# frozen_string_literal: true

# Examples of simple operators use in ruby
# @author Vincent Courtois

puts "=== PART 1 : NUMBERS ===\n\n"

my_variable = 0

puts "Valeur de base : #{my_variable}"

my_variable += 1
# Cleanest incrementation
my_variable += 1

puts "Valeur après deux incrémentations : #{my_variable}"

my_variable *= 2
# Quickest multiplication
my_variable *= 2

puts "Valeur après deux multiplications par deux : #{my_variable}"

my_variable /= 2
# Quickest division
my_variable /= 2

puts "Valeur après deux divisions : #{my_variable}"

my_variable -= 1
# Quickest... You guessed it, subtraction.
my_variable -= 1

puts "Retour à la valeur de base : #{my_variable}"

puts "\n=== PART 2 : BOOLEANS === \n\n"

true_var = true

false_var = false

puts "TRUE && FALSE : #{true_var && false_var}"
puts "TRUE || FALSE : #{true_var || false_var}"
puts "!TRUE : #{!true_var}"

puts "\nEt avec des opérateurs human-readable :\n\n"

puts "TRUE and FALSE : #{true_var && false_var}"
puts "TRUE or FALSE : #{true_var || false_var}"
puts "not TRUE : #{!true_var}"
