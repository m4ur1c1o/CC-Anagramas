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

# puts are_anagrams?("ROMA", "AMORe") == true

# METODO QUE RECIBE UNA PALABRA Y BUSCA EN UN DICCIONARIO SI TIENE ANAGRAMAS
def anagrams_for(word, word_array)
	palabras = []
	word_array.each do |wrd|
		if are_anagrams?(word, wrd) == true
			palabras << wrd
		end
	end
	palabras
end

word = "ROMA"
array = ["AMOR", "HOME", "ROMA", "OMAR", "MORA", "RAMO", "ARMO", "MARO", "CASA", "CODE"]

puts anagrams_for(word, array)