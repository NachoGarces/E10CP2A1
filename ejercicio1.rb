class Alumno
  def initialize(nombre, nota1, nota2, nota3, nota4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @nota3 = nota3
    @nota4 = nota4
  end

  def self.read_file(arch = 'notas.txt')
    alumnos = []
    data = []
    File.open(arch, 'r') { |file| data = file.readlines }
    data.each do |alumno|
      alumnos << Alumno.new(*alumno.split(', '))
    end
    alumnos
  end

  def mostr
    "#{@nombre}: #{@nota1} - #{@nota2} - #{@nota3} - #{@nota4}"
  end
end

arr = Alumno.read_file
puts arr.map(&:mostr)
