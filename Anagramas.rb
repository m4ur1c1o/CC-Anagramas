#METODO QUE REGRESA UNA PALABRA EN CANONICO
def canonical(word)
  # implementa el formato canonical
	word.downcase.chars.sort
end

#METODO QUE NOS DICE SI DOS PALABRAS EN CANONICO SON IGUALES
def are_anagrams?(word1, word2)
  canonical(word1) == canonical(word2)
end

#puts canonical("ROMA")
#puts canonical("AMOR")

puts are_anagrams?("ROMA", "AMORe") == true