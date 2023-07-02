# Créez un programme qui trie les éléments donnés en argument par ordre ASCII.

if ARGV.length < 1
  puts "error"
  exit
end

elements = ARGV.select { |arg| !arg.match?(/\A-?\d+\z/) }

if ARGV.length != elements.length
  puts "Error"
  exit
end

resultat = elements.sort

puts resultat.join(' ')
