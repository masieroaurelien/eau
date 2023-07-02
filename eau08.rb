# Créez un programme qui détermine si une chaîne de caractères ne contient que des chiffres.

def que_des_chiffres(chaine)
  result = ""

  chaine.each_char do |caractere|
    if ('0'..'9').include?(caractere)
      return "true"
    else
      return "false"
    end
  end

  return result
end

chaine = ARGV[0]

resultat = que_des_chiffres(chaine)

puts resultat
