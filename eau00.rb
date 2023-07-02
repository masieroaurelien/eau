#Créez un programme qui affiche toutes les différentes combinaisons possibles de trois chiffres dans l’ordre croissant, dans l’ordre croissant. La répétition est volontaire.

(0..9).to_a.combination(3).each do |combination|
  puts combination.join(' ')
end
