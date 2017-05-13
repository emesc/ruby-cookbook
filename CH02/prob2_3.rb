# expression or variable substitution where replacement can happen later
template = "Fill in the blanks with the correct %s."
puts template % "answer"
puts template % "question"

puts "Value of PI up to 2 decimal places: %.2f" % Math::PI
puts "Zero padded PI with hidden 0s : %5d" % Math::PI
puts "Zero padded PI with visible 0s: %.5d" % Math::PI


# using ERB
# an ERB template can reference variables before they're defined; when you call ERB#result or #ERB#run, the template is executed according to the current values of those variables
require 'erb'

template = ERB.new %q{Chunky <%= food %>!}
food = "bacon"
# if in irb
# template.result(binding)
# if not in irb
puts template.result
food = "peanut butter"
puts template.result

# ERB can contain loops and conditionals
template = %q{
  <% if problems.empty? %>
    Looks like your code is clean!
  <% else %>
    I found the following problems with your code
    <% problems.each do |problem, line| %>
      * <%= problem %> on line <%= line %>
    <% end %>
  <% end %>
}.gsub(/^\s+/, '')

template = ERB.new(template, nil, '<>')

problems = [["Use of is_a? instead of duck typing", 23],
            ["eval() is usually dangerous", 44]]
puts template.run(binding)

problems = []
puts template.run(binding)

# substitutions wont be activated when using '' instead of ""
class String
  def substitute(binding=TOPLEVEL_BINDING)
    eval(%{"#{self}"}, binding)
  end
end

template = %q{Chunky #{food}!}
food = 'bacon'
puts template.substitute(binding)
food = 'peanut butter'
puts template.substitute(binding)
# safe against attacker running Ruby code
food = '#{system("dir")}'
puts template.substitute(binding)