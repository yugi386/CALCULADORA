# encoding: utf-8

require 'spec_helper'
require './calc'

describe Calculadora do

  let(:calc) { Calculadora.new }

  context "somando" do
    it "deve somar dois números" do
      calc.somar(2, 3).should == 5
    end

    it "deve somar tres números" do
      calc.somar(2, 3, 5).should == 10
    end

    it "deve somar varios números" do
      calc.somar(1, 2, 3, 4, 5).should == 15
    end
  end

  context "subtraindo" do
    it "deve subtrair dois numeros" do
      calc.subtrair(10, 5).should == 5
    end

    it "deve subtrair varios numeros" do
      calc.subtrair(10, 5, 3).should == 2
    end
  end

  context "multiplicando" do
    it "deve multiplicar dois numeros" do
      calc.multiplicar(5, 5).should == 25
    end

    # escrever outros testes
  end

  context "dividindo" do
    it "deve dividir dois numeros" do
      calc.dividir(10, 2.5).should == 4
    end

	it "Não deve permitir divisão por zero" do
      calc.dividir(10, 0).should == false
	end
    
  end
  
  context "pre" do
	it "só deve aceitar números" do
		calc.pre("a",5).should == false 
		calc.pre("0.5".to_f,5).should == true 
		calc.pre("0.5".to_i,5,"v").should == false 
	end	
  end
  
  context "raiz" do
	it "verifica se raiz é valida" do
		calc.raiz(4,2).should == 2
		calc.raiz(-1,125).should == false
		calc.raiz(8,3).should == 2 
	end	
  end
 
end
