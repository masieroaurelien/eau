# Créez un programme qui trie une liste de nombres. Votre programme devra implémenter l’algorithme du tri à bulle.


def my_bubble_sort(array)
  return array if array.empty? || array.length < 2

  n = array.length

  loop do
    swapped = false

    (n - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end

    break unless swapped
  end

  array
end

if ARGV.length <= 1
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

# Trier les nombres avec l'algorithme du tri à bulle
resultat = my_bubble_sort(nombres)

# Afficher le résultat trié
puts resultat.join(' ')
