class Conta
    attr_accessor :saldo, :mensagem

    def initialize(saldo)
        self.saldo = saldo
    end
    
    def saca(valor, max, taxa)
        if (valor > self.saldo)
            self.mensagem = 'Saldo insulficiente para saque :('
        elsif (valor > max)
            self.mensagem = 'Limite maximo para saque de R$' + max.to_s
        else
            self.saldo -= valor + taxa
        end
    end

end



class ContaCorrente < Conta
    def saca(valor, max = 700, taxa = 5.00)
        super
    end
end

class ContaPoupanca < Conta
    def saca(valor, max = 500, taxa = 2.00)
        super
    end
end