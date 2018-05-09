def lin(archivo)
file = File.open(archivo, 'r')
 data = file.readlines.count
 puts "el archivo tiene #{data} lineas"
file.close
end

lin('peliculas.txt')
