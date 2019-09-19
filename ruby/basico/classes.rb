# Ruby é uma linguagem considerada puramente orientada a objetos
# Porque bo Ruby tudo são objetos

# Classe possui atributos e métodos
# Caracteríscticas e ações

# Carro (Nome, marca, Modelo, Cor, Quantidade de portas, etc ...)
# Ligar, Buzinar, Parar, etc...

class Carro
  attr_accessor :nome

  def ligar
    puts "O carro está pronto para iniciar o trajeto."
  end
end

civic = Carro.new
civic.nome = "Civic"

puts civic.nome

civic.ligar
