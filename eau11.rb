# Créez un programme qui affiche la différence minimum absolue entre deux éléments d’un tableau constitué uniquement de nombres. Nombres négatifs acceptés.


if ARGV.length < 2
  puts "error"
  exit
end

nombres = []

ARGV.each do |arg|
  if arg.match?(/\A-?\d+\z/)
    nombres << arg.to_i
  else
    puts "error"
    exit
  end
end

difference_minimum = nil

nombres.each_with_index do |n1, i1|
  nombres.each_with_index do |n2, i2|
    next if i1 == i2

    difference = (n1 - n2).abs

    if difference_minimum.nil? || difference < difference_minimum
      difference_minimum = difference
    end
  end
end

puts difference_minimum
