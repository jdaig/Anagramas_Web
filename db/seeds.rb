# Este archivo sirve para correr código que te permita 
# rellenar tu base de datos con información. 

file = File.open("words", "r")
contents = file.read
palabras = contents.split("\n")

palabra_down = []
palabras.each do |palabra|
  palabra_down << palabra.to_s.downcase
end

palabra_down.map do |palabradown|
ordenada = palabradown.split('').sort.join 
  Word.create(anagrama: ordenada, canonica: palabradown)
end

# def canonical(word)
#   word.split('').sort.join
# end


# def are_anagrams?
#    canonical(word1) == canonical(word2)
# end


# def anagrams_for(word, array)
#   array.select{|palabra| word.length == palabra.length}.map{ |palabra| palabra if are_anagrams?(palabra, word)}.compact
# end