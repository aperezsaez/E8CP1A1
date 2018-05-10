#Crear un método que reciba el archivo peliculas.txt, lo abra y cuente la cantidad total
#de palabras. El método debe devolver este valor.

def arr(word)
file = File.open(word, 'r')
 data = file.read.split(' ').map(&:chomp)
 puts "El archivo #{data.count} palabras"
 file.close
end

arr('peliculas.txt')

#Crear un método similar para que además reciba -como argumento- un string. En
#este caso el método debe contar únicamente las apariciones de ese string en el
#archivo

def arr(archivo, string)
  file = File.open(archivo, 'r')
  data = file.read
  num = data.scan(string).count
  puts num
  file.close
end

arr('peliculas.txt', 'la')
