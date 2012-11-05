# racional.rb

class Racional

  def initialize(num, den)
    div = mcd(num, den)
    @numerador = num/div
    @denominador = den/div
  end

  def mcd(a,b)
    return a if b == 0
    mcd(b, a%b)
  end
  
  
  attr_reader :numerador, :denominador
  
  def num
    @numerador
  end
  
  def denom
    @denominador
  end
  
  def mostrar_fraccion
    "#{num}/#{denom}"
  end
  
  def mostrar_flotante
    num.to_f/denom
  end
  
  def ==(o)
    begin
      return ((num == o.num) and (denom == o.denom)) if o.instance_of?Racional
      false
    rescue
      false
    end
    
  end
  
end