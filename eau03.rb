#Créez un programme qui affiche le N-ème élément de la célèbre suite de Fibonacci. (0, 1, 1, 2) étant le début de la suite et le premier élément étant à l’index 0.
def fibonacci(n)
  sequence = [0,1]

  (2..n).each do |i|
    sequence << sequence[i -1] + sequence[i - 2]
  end

  return sequence[n]
end

def est_nombre_positif?(argument)
  return argument.to_i.to_s == argument && argument.to_i.positive?
end

argument = ARGV[0]

n = argument.to_i

resultat = fibonacci(n)

if est_nombre_positif?(argument)
  puts resultat
else
  puts "Veuillez entrer un nombre positif"
end
