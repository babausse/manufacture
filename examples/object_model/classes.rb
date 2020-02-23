# Definition de la classe avec le mot clef "class"
# Notez le nom commençant par une majuscule pour etre une constante
class MyClass

  attr_reader :readonly_attr

  attr_accessor :rw_attr

  def initialize(readonly, rw)
    @rw_attr = rw
    @readonly_attr = readonly
  end

  def self.static_method
    'Static method call'
  end

  def instance_method
    return "#{readonly_attr} #{rw_attr}!"
  end
end

puts MyClass.static_method

instance = MyClass.new('Hello', 'world')

puts instance.instance_method