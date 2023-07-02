# Créez un programme qui affiche le premier nombre premier supérieur au nombre donné en argument.

def est_nombre_premier?(nombre)
  return false if nombre <= 1

  (2..Math.sqrt(nombre)).each do |diviseur|
    return false if nombre % diviseur == 0
  end

  return true
end

argument = ARGV[0].chomp

nombre = argument.to_i

if nombre.negative? || !nombre.is_a?(Numeric) || argument != nombre.to_s
  puts "-1"
else
  nombre_premier = nombre + 1

  while true
    if est_nombre_premier?(nombre_premier)
      puts nombre_premier
      break
    end

    nombre_premier += 1
  end
end
