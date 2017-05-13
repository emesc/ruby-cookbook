# the letters or words in a string are in the wrong order

# String#reverse and String#reverse! will both reverse by letter
string = ".sdrawkcab si gnirts sihT"
puts string.reverse
puts string

puts string.reverse!
puts string

# to order the words in a string, split the string into a list of whitespaceseparated words
# then join the list back into a string
s = "order. wrong the in are words These"
# \s+ matches one or more whitepace chars; splits the string on word boundaries
# regex enclosed in () to also include separators (whitespace in this case) in the list
p = s.split(/(\s+)/)
p p
p = p.reverse!.join('')
p p
# \b matches the word boundary; also matches punctuation
q = s.split(/\b/).reverse!.join('')
p q
