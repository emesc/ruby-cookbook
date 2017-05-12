# skipped the string interpolation solutions
# Ruby is quite flexible on the string to use on a here document construct

name = "John Doe"
email = <<content
Dear #{name},

  I think that I shall never see
a poem as lovely as a tree
content

puts email