def canonical(word)
  word.chars.sort
end

def are_anagrams?(base, comparader)
    canonical(base) == canonical(comparader)
end

# p canonical("omar")
p are_anagrams?("roma", "mora")
p are_anagrams?("mono", "nomo")