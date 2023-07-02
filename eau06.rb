# Créez un programme qui met en majuscule une lettre sur deux d’une chaîne de caractères. Seule les lettres (A-Z, a-z) sont prises en compte.


def majuscule_une_lettre_sur_deux(chaine)
  result = ""
  count = 0

  chaine.each_char do |caractere|
    if ('A'..'Z').include?(caractere) || ('a'..'z').include?(caractere) || caractere == ' ' || caractere == '!'
      if count % 2 == 0
        result += caractere.upcase
      else
        result += caractere.downcase
      end
      count += 1
    else
      return "error"
    end
  end

  return result
end

# Vérifie si le nombre d'arguments est correct
if ARGV.length != 1
  puts "error"
  exit
end

chaine = ARGV[0]

if chaine =~ /\d/  # Vérifie si la chaîne contient des chiffres
  puts "error"
  exit
end

resultat = majuscule_une_lettre_sur_deux(chaine)

puts resultat
