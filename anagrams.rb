# escribe un método llamado are_anagrams? que reciba dos palabras, 
# sin importar si existen en un diccionario, y devuelva true o false.
# Intenta escribir un método llamado canonical que reciba una palabra y la regrese 
# en un formato especifico el cual, si comparas dos anagramas después de mandados a este método sean iguales.
def canonical(word)
  word.chars.sort
end

def are_anagrams?(base, comparader)
    canonical(base) == canonical(comparader)
end

# p canonical("omar")
p are_anagrams?("roma", "mora")
p are_anagrams?("mono", "nomo")

# crear un método que se llame anagrams_for el cual deberá recibir una palabra y un arreglo de palabras (un diccionario) 
# y regresar un arreglo de las palabras que sean anagramas de esa palabra o un arreglo vació si no encuentra ninguna.

dictionary = ["gema", "amor", "hongo", "ella", "roma", "mora", "dedo", "mira", "fila", "omar"]

def anagrams_for(word, array)
	word = canonical(word)
		array.select {|wrd| wrd = canonical(wrd) == word}
end

p anagrams_for("roma", dictionary) == ["amor", "roma", "mora", "omar"]