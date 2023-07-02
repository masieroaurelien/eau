#Créez un programme qui affiche ses arguments reçus à l’envers.

yodamaster = ARGV.reverse

if yodamaster.length > 1
  puts yodamaster.join(' ')
else
  puts "Veuillez entrer plus d'arguments"
end
