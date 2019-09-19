class ContaCorrente
  attr_accessor :saldo, :mensagem

  def initialize(saldo)
    self.saldo = saldo
  end

  def saca(valor)
    if (valor > self.saldo)
      self.mensagem = "Saldo insulficiente para saque :("
    else
      self.saldo -= valor
    end
  end
end

describe ContaCorrente do
  describe "Saque" do
    context "quando o valor for positivo" do
      before(:all) do
        @conta = ContaCorrente.new(1000.00)
        @conta.saca(200.00)
      end
      it "entao atualiza saldo" do
        expect(@conta.saldo).to eql 800.00
      end
    end

    context "qualdo o saldo é zero" do
      before(:all) do
        @conta = ContaCorrente.new(0.00)
        @conta.saca(100.00)
      end
      it "vejo a mensagem" do
        expect(@conta.mensagem).to eql "Saldo insulficiente para saque :("
      end
      it "meu saldo permanece com zeros" do
        expect(@conta.saldo).to eql 0.00
      end
    end
    context "qualdo o saldo é insulficiente" do
      before(:all) do
        @conta = ContaCorrente.new(100.00)
        @conta.saca(101.00)
      end
      it "vejo a mensagem" do
        expect(@conta.mensagem).to eql "Saldo insulficiente para saque :("
      end
      it "meu saldo permanece conforme valor inicial" do
        expect(@conta.saldo).to eql 100.00
      end
    end
    context "quando o valor do saque é maior que o limite por transação" do
      before(:all) do
        @conta = ContaCorrente.new(1000.00)
        @conta.saca(700.00)
      end
      it "vejo mensagem" do
        expect(@conta.mensagem).to eql "Limite máximo para saque é de R$700"
      end
      it "meu saldo permanece conforme o valor inicial" do
        expect(@conta.saldo).to eql 1000.00
      end
    end
  end
end
