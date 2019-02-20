module Formula
  def perimetro
    puts "Perimetro: #{(@base + @altura) * 2}"
  end

  def area
    puts "Area: #{@base * @altura}"
  end
end

class Rectangulo
  include Formula
  def initialize(bases, altura)
    @base = bases
    @altura = altura
  end

  def lados
    puts "Medida --> base: #{@base} - altura #{@altura}"
  end
end

class Cuadrado
  include Formula
  def initialize(lado)
    @base = lado
    @altura = lado
  end

  def lados
    puts "Medida de los lados: #{@base}"
  end
end

c = Cuadrado.new(25)
c.lados
puts c.perimetro
puts c.area

f = Rectangulo.new(10, 20)
f.lados
puts f.perimetro
puts f.area
