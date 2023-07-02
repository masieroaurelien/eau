# Créez un programme qui détermine si une chaîne de caractère se trouve dans une autre.

def est_contenu?(argument, search)
  return argument.include?(search)
end

argument = ARGV[0].to_s

search = ARGV[1].to_s


if search.length < 0
  puts "Error"
else
  if est_contenu?(argument, search)
    puts "True"
  else
    puts "False"
  end
end
