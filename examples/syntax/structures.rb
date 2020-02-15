# frozen_string_literal: true

puts "=== PARTIE 1 : conditions ===\n\n"

my_variable = true

# Notez l'utilisation de SIMPLES quotes quand on n'affiche pas de variables
if my_variable
  puts 'Vous voyez ce message car myVariable est à TRUE'
elsif my_variable == 'panier de linge'
  puts "Ma variable n'est pas un panier de linge vous ne voyez pas ça"
else
  puts 'Vous ne voyez pas ça non plus'
end

puts "\n=== PART 2 : loops ===\n\n"

my_variable = 0

while my_variable < 3
  puts "Valeur : #{my_variable}"
  my_variable += 1
end

puts '' # can be only "puts"

my_array = ['a', 'b', 'c']

for letter in my_array
  puts "Lettre : #{letter}"
end

puts "\n=== PART 3 : ITERATORS ===\n\n"

my_array.each do |letter, index|
  puts "Letter #{letter} at index #{index}"
end

puts ''

my_array.each do |letter|
  puts "Letter #{letter}"
end

my_array = my_array.map do |letter|
  "The letter is #{letter}"
end

puts "\n#{my_array.first}"