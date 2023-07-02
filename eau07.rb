# Créez un programme qui met en majuscule la première lettre de chaque mot d’une chaîne de caractères. Les autres lettres devront être en minuscules. Les mots ne sont délimités que par un espace, une tabulation ou un retour à la ligne.

chaine = ARGV[0]


def majuscule_debut_mot(chaine)
  result = ""

  chaine.each_char do |caractere|
    if ('A'..'Z').include?(caractere) || ('a'..'z').include?(caractere) || caractere == ' ' || caractere == '!' || caractere == 'é' || caractere == 'è' || caractere == 'à'
      mots = chaine.split

      result = mots.map do |mot|
        mot.match?(/\d/) ? mot : mot.capitalize
      end

      result = result.join(" ")
    else
      result =  "error"
    end
  end

  return result
end

resultat = majuscule_debut_mot(chaine)

puts resultat
