# frozen_string_literal: true

puts "===PARTIE 1 : les constantes ===\n\n"

MA_CONSTANTE = 0
MA_CONSTANTE = 1

puts "\nOn peut empêcher la redéfinition en 2 étapes :"
puts '1. Inclure la constante dans un module'
puts "2. invoquer la méthode #freeze sur le module\n\n"

# Module used to demonstrate the freeze
module MyModule
  FROZEN_CONSTANTE = 0
  freeze
end

# egalement possible en dehors du module en appelant :
# MyModule.freeze

begin
  MyModule::FROZEN_CONSTANTE = 1
rescue RuntimeError => e
  puts "Modifier une constante frozen lève une erreur de type #{e.class}"
end

puts "\n=== PARTIE 2 : les variables ===\n\n"

variable = 9001

puts "Valeur de la variable : #{variable}"

puts "\n=== PARTIE 3 : attributs de classe et attributs statiques ===\n\n"

# Class used to demonstrate instance and static attributes
class MyClass
  attr_accessor :accessor

  # La methode initialize est le constructeur de la classe (convention)
  def initialize
    @attribute = 'truite'
    @accessor = 'pouet'
  end

  # rubocop:disable Style/ClassVars
  @@static = 'flamand rose'
  # rubocop:enable Style/ClassVars

  def self.static
    @@static
  end

  attr_reader :attribute
end

puts "Attribut statique : #{MyClass.get_static}"
puts "Attribut d'instance : #{MyClass.new.get_attribute}"
puts "Accesseur : #{MyClass.new.accessor}"

# Points a remarquer :
# - pas besoin de mot-clef "return"
#     la derniere instruction executee est toujours le resultat retourne.
# - La methode new renvoyant l'objet cree, elle est chainable (peu conseille)
# - attr_accessor peut etre remplace par attr_reader
# - self.<method name> permet de definir une methode statique dans une classe.
# - impossible d'acceder a @attribute en dehors de la classe.
