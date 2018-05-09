#Crear un método que reciba dos strings, este método creará un archivo index.html y
#pondrá como párrafo cada uno de los strings recibidos
def met(string0, string1)
 file = File.open('index.html', 'w')
 file.puts "<p>#{string0}</p>\n<p>#{string1}</p>"
 file.close
return nil
end

met('Primer parrafo', 'Segundo Parrafo')

#Crear un método similar al anterior, que además pueda recibir un arreglo. Si el
#arreglo no está vacío, agregar debajo de los párrafos una lista ordenada con cada
#uno de los elementos


def met(string0, string1, b)
  file = File.open('index.html', 'w')
  file.puts "<p>#{string0}</p>\n<p>#{string1}</p>"

    if !b.empty?
      file.puts '<ol>'
      b.each do |i|
      file.puts "<li>#{i}</li>"
      end
      file.puts '</ol>'
    end
  file.close
  return nil
end

met('Primer parrafo', 'Segundo Parrafo',b = [1, 2, 3])

#Crear un tercer método que además pueda recibir un color. Agregar color de fondo
#a los párrafos.

def met(string0, string1, b, color)
  file = File.open('index.html', 'w')
  file.puts "<p style = backgroundcolor:#{color}>#{string0}</p>\n<p style = backgroundcolor:#{color}>#{string1}</p>"

    if !b.empty?
      file.puts '<ol>'
      b.each do |i|
      file.puts "<li>#{i}</li>"
      end
      file.puts '</ol>'
    end
file.close
return nil
end

met('Primer parrafo', 'Segundo Parrafo',b = [], 'red')

#El retorno de los métodos debe devolver nil.

def met(string0, string1, b, color)
  file = File.open('index.html', 'w')
  file.puts "<p style = background-color:#{color}>#{string0}</p>\n<p style = background-color:#{color}>#{string1}</p>"

    if !b.empty?
      file.puts '<ol>'
      b.each do |i|
      file.puts "<li>#{i}</li>"
      end
      file.puts '</ol>'
    end
  file.close
  return nil
end

met('Primer parrafo', 'Segundo Parrafo',b = ['abajo', 'arriba', 'centro'], 'red')
