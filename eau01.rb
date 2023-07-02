#Créez un programme qui affiche toutes les différentes combinaisons de deux nombre entre 00 et 99 dans l’ordre croissant.


(0..99).to_a.combination(2).each do |combination|
  puts "%02d %02d" % combination
end
