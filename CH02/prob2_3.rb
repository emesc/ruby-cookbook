# expression or variable substitution where replacement can happen later
template = "Fill in the blanks with the correct %s."
puts template % "answer"
puts template % "question"

puts "Value of PI up to 2 decimal places: %.2f" % Math::PI
puts "Zero padded PI with hidden 0s : %5d" % Math::PI
puts "Zero padded PI with visible 0s: %.5d" % Math::PI
