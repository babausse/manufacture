module MyModule
  CONSTANTE = 42

  # Cette method ne sera jamais appelable car le module
  # ne peut pas etre instancie.
  def static_method
    'Result of the not-so static method'
  end

  def self.static_method
    'Result of the static call'
  end
end

puts MyModule::CONSTANTE

puts MyModule.static_method