#Créez un programme qui affiche toutes les différentes combinaisons possibles de 2 chiffres dans l’ordre croissant, dans l’ordre croissant. La répétition est volontaire.

(0..99).to_a.combination(2).each do |combination|
  puts "%02d %02d" % combination
end
