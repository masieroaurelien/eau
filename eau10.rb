# Créez un programme qui affiche le premier index d’un élément recherché dans un tableau. Le tableau est constitué de tous les arguments sauf le dernier. L’élément recherché est le dernier argument. Afficher -1 si l’élément n’est pas trouvé.

if ARGV.length < 2
  puts "-1"
  exit
end

tableau = ARGV[0...-1]
element_recherche = ARGV[-1]

index = tableau.index(element_recherche)

if index.nil?
  puts -1
else
  puts index
end
