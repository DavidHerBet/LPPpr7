# racional_spec.rb

require "rspec"
require "racional"

describe Racional do
  
  before :each do
    @racional = Racional.new(4,8)
  end
  
  it "Debe existir un numerador" do
    @racional.respond_to?("numerador").should == true
  end
  
  it "Debe existir un denominador" do
    @racional.respond_to?("denominador").should == true
  end
  
  it "Debe de estar en su forma reducida" do
    @racional.numerador.should == 1
    @racional.denominador.should == 2
  end
  
  it "Se debe invocar al metodo num() para obtener el numerador" do
    @racional.respond_to?("num").should == true
  end
  
  it "Se debe invocar al metodo denom() para obtener el denominador" do
    @racional.respond_to?("denom").should == true
  end
  
  it "Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador" do
    @racional.respond_to?("mostrar_fraccion").should == true
    @racional.mostrar_fraccion.should == '1/2'
  end
  
  it "Se debe mostar por la consola la fraccion en formato flotante" do
    @racional.respond_to?("mostrar_flotante").should == true
    @racional.mostrar_flotante.should == 0.5
  end
#   
#   it "Se debe comparar si dos fracciones son iguales con ==" do
#   end
#   
#   it "Se debe calcular el valor absoluto de una fraccion con el metodo abs" do
#   end
#   
#   it "Se debe calcular el reciproco de una fraccion con el metodo reciprocal" do
#   end
#   
#   it "Se debe calcular el opuesto de una fraccion con -" do
#   end
#   
#   it "Se debe sumar dos fracciones con + y dar el resultado de forma reducida" do
#   end
#   
#   it "Se debe restar dos fracciones con - y dar el resultado de forma reducida" do
#   end
#   
#   it "Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida" do
#   end
#   
#   it "Se debe dividir dos fracciones con / y dar el resultado de forma reducida" do
#   end
#   
#   it "Se debe calcular el resto dos fracciones con % y dar el resultado de forma reducida" do
#   end
#   
#   it "Se debe de poder comprobar si una fracion es menor que otra" do
#   end
#   
#   it "Se debe de poder comprobar si una fracion es mayor que otra" do
#   end
#   
#   it "Se debe de poder comprobar si una fracion es menor o igual que otra" do
#   end
#   
#   it "Se debe de poder comprobar si una fracion es mayor o igual que otra" do
#   end
  
  

end
