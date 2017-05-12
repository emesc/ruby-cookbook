# better to use << construction so you don't create new strings that are immediately turned into a larger string

# for hashes
hash = {
  key1: "val1",
  key2: "val2"
}
string = ""
hash.each { |k, v| string << k.to_s << ": " << v << "\n"}

puts string

# for arrays, using Array#join
data = %w(1 2 3 4)
string = ""
string = data.join(" and a ")

puts string

# for arrays, simulating join with Enumerator#each_with_index
string = ""
data.each_with_index { |d, i| string << d; string << " and a " unless i == data.length - 1 }

puts string