=begin
Créez un programme qui trie une liste de nombres. Votre programme devra implémenter l’algorithme du tri par sélection.
=end

def my_select_sort(array)
  return array if array.empty? || array.length < 2

  n = array.length

  (n - 1).times do |i|
    min_index = i

    (i + 1).upto(n - 1) do |j|
      min_index = j if array[j] < array[min_index]
    end

    array[i], array[min_index] = array[min_index], array[i] if i != min_index
  end

  array
end

if ARGV.length < 1
  puts "Error"
  exit
end

nombres = []

ARGV.each do |arg|
  if arg.match?(/\A-?\d+\z/)
    nombres << arg.to_i
  else
    puts "Error"
    exit
  end
end

# Trier les nombres avec l'algorithme du tri par sélection
resultat = my_select_sort(nombres)

# Afficher le résultat trié
puts resultat.join(' ')
