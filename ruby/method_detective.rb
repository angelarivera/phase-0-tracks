# Replace in the "<???>" with the appropriate method (and arguments, if any).

# "iNvEsTiGaTiOn".<? ? ?>
puts "investigation".gsub /..?/, &:capitalize
# => “InVeStIgAtIoN”

# "zom".<???>
puts "zom".insert(1,'o')
# => “zoom”

# "enhance".<???>
puts "enhance".replace "    enhance    "

myString = "enhance"
puts myString["enhance"] = "    enhance    "
# => "    enhance    "

# "Stop! You’re under arrest!".<???>
puts "Stop! You're under arrest".upcase 
# => "STOP! YOU’RE UNDER ARREST!"

# "the usual".<???>
puts "the usual".concat(" suspects")

puts "the usual" + " suspects".to_s

puts "the usual" << " suspects"
#=> "the usual suspects"

# " suspects".<???>
puts " suspects".prepend("the usual")
# => "the usual suspects"

# "The case of the disappearing last letter".<???>
puts "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

# "The mystery of the missing first letter".<???>
puts "The mystery of the missing first letter".slice(1..38)

puts "The mystery of the missing first letter"[1..-1]
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
puts "Elementary,    my   dear        Watson!".squeeze(" ")

puts "Elementary,    my   dear        Watson!".split.join(" ")
# => "Elementary, my dear Watson!"

# "z".<???>
puts ?z.ord 
# 122 is the ASCII character code for the letter z.
# => 122 

# "How many times does the letter 'a' appear in this string?".<???>
puts "How many times does the letter 'a' appear in this string?".count('a')
# => 4



