# racional.rb

class Racional

  include Comparable
  
  def initialize(num, denom)
    raise TypeError, "El denominador debe ser mayor que cero" unless (denom != 0)
    div = mcd(num, denom)
    @num = num/div
    @denom = denom/div
  end

  def mcd(a,b)
    return a if b == 0
    mcd(b, a % b)
  end
  
  attr_reader :num, :denom
  
  def to_s
    "#{@num}/#{@denom}"
  end
  
  def to_f
    @num.to_f/@denom
  end
  
  def ==(o)
    begin
      return ((num == o.num) and (denom == o.denom)) if o.instance_of? Racional
      false
    rescue
      false
    end
  end
  
  def abs
    Racional.new(@num.abs, @denom.abs)
  end
  
  def reciprocal
    Racional.new(@denom, @num)
  end
  
  def -@
    Racional.new(-@denom, @num)
  end
  
  def +(o)
    Racional.new(num*o.denom + o.num*denom, denom*o.denom)
  end
  
  def -(o)
    Racional.new(num*o.denom - o.num*denom, denom*o.denom)
  end
  
  def *(o)
    Racional.new(num*o.num,denom*o.denom)
  end
  
  def /(o)
    Racional.new(num*o.denom,denom*o.num)
  end
  
  def %(o)
    Racional.new(num%denom, o.num%o.denom)
  end
  
  def <=>(o)
    return nil unless o.instance_of? Racional
    (num.to_f / denom) <=> (o.num.to_f / o.denom)
  end
  
end