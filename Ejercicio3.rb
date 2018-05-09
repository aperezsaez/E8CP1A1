def arr(word)
file = File.open(word, 'r')
 data = file.read.split(' ').map(&:chomp)
 puts "El archivo #{data.count} palabras"
 file.close
end

arr('peliculas.txt')
