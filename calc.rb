# encoding: utf-8

# Classe para efetuar calculos matematicos
#
class Calculadora

  # Soma dois números
  #
  # Exemplo:
  #   calc = Calculadora.new
  #   calc.somar(2, 2)
  #   => 4
  #
  
  def pre(*args)
	ret = true
    args.each do |x|
		if !(x.instance_of?(Fixnum) || x.instance_of?(Float) || x.instance_of?(Bignum))
			puts "informe um número"
			ret = false
		end	
	end	
	return ret
  end
  
  def somar(*args)
	exit if pre(*args) == false
    args.reduce(:+)
  end

  def subtrair(*args)
	exit if pre(*args) == false
    args.reduce(:-)
  end
  
  def multiplicar(*args)
	exit if pre(*args) == false
	args.reduce(:*)
  end
  
  def dividir(*args)
	exit if pre(*args) == false
	ct = 0
	args.each do |x|
		if x == 0 && ct != 0
			puts "Erro de Divisão por Zero"
			# exit
			return false
		end	
		ct = ct + 1
	end	
	args.reduce(:/)
  end
  
  def raiz(num,raiz)
	if num < 0
		return false
	end
	
	acm = ("1" + ("0" * num.to_i.to_s.length)).to_f
	while acm > num
		acm = acm / 10
	end
	
	fat = acm
	while true
		acm2 = acm ** raiz
		if (acm2 > num)
			acm = acm / 10
		elsif (acm2 == num)
			return acm
		else 
			while true
				acm = acm + fat
				if (acm ** raiz > num)
					acm = acm - fat
					break
				end
			end
			fat = fat / 10
		end	
		if (fat < 0.00000000001)
			break
		end	
	end
	
	crid = acm.to_s
	ret = ""
	cont = 0
	ver = false;
	for ct in (0..crid.length)
		if crid[ct] == "."
			ver = true
		end
		ret = ret + crid[ct]		
		if ver == true	
			cont = cont + 1
		end		
		if cont > 10
			acm = ret.to_f
			break
		end	
	end
	return acm
  end  
  
end

cal = Calculadora.new
puts cal.somar(5,5.5)
puts cal.dividir(0,5, 4, 3, 11111)
puts cal.dividir(10,0)
puts cal.raiz(100,100)
puts cal.raiz(2,2)
puts cal.raiz(4,2)
puts cal.raiz(0.5,2)