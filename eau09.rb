# Créez un programme qui affiche toutes les valeurs comprises entre deux nombres dans l’ordre croissant. Min inclus, max exclus.

cli = ARGV.sort

min = cli[0].to_i
max = cli[1].to_i

result = []

count = min

while count < max
 result.push(count)
 count += 1
end


puts result.join(' ')
