module Loggable
  def log(format: 'JSON')
    if format == 'JSON'
      return "{\"log\": \"#{value.to_s}\"}"
    elsif format == 'XML'
      return "<log>#{value.to_s}</log>"
    else
      return value.to_s
    end
  end
end

module Assignable
  attr_accessor :value

  def self.included_static
    'This static method was included !'
  end
end

module Extended
  def future_static_method
    'Résultat de la méthode statique !'
  end
end

module Namespace
  class Wrapper
    include Assignable
    include Loggable

    extend Extended
  end
end

wrapper = Namespace::Wrapper.new

wrapper.value = 'test_value'

puts wrapper.log(format: 'JSON')

puts wrapper.log(format: 'XML')

puts wrapper.log(format: 'pouet pouet')

puts wrapper.log

puts Namespace::Wrapper.future_static_method

# Les deux cas suivants sont la pour vous montrer ce qui se passe quand on
# inclut une method statique depuis un module : ca ne marche pas.

begin
  puts Namespace::Wrapper.included_static
rescue NoMethodError => exception
  puts "La méthode n'a pas pu être retrouvée car l'inclusion ne ramène pas les méthodes statiques."
end

begin
  puts Namespace::Wrapper.new.included_static
rescue NoMethodError => exception
  puts "La méthode n'a pas pu être retrouvée car l'inclusion ne ramène pas les méthodes statiques."
end