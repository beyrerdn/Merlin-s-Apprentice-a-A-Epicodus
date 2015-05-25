# Write a function word_unscrambler that takes two inputs: a scrambled
# word and a dictionary of real words.  Your program must then output
# all words that our scrambled word can unscramble to.
#
# Hint: To see if a string `s1` is an anagram of `s2`, split both
# strings into arrays of letters. Sort the two arrays. If they are
# equal, then they are anagrams.
#
# Difficulty: 3/5
def word_unscrambler(str, words)
  found_scrambled_word_array = []
  words.each{|word| str.chars.sort == word.chars.sort ? found_scrambled_word_array << word : next}
  found_scrambled_word_array
end

  #words.keep_if{|word| str.chars.sort == word.chars.sort}
#end

