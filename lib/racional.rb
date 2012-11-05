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
  
end