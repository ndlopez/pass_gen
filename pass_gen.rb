=begin
a nice Ruby pass generator
=end
require 'securerandom'
print "1. My new passphrase: "
def gen_code(num)
   charset= Array('A'..'Z')+Array('a'..'z')+Array(0..9)
   charset << "!"#["!","#","$","%","&","@"]
   charset << "#"
   charset << "$"
   charset << "%"
   charset << "]"
   charset << "&"
   charset << "@"
   #puts charset
   Array.new(num){
      charset.sample }.uniq.join
end

puts gen_code(15)
#gen a passphrase with Ruby's random function
print "A random number [0..50]: ", SecureRandom.random_number(50) 
puts "\n2. Could SecureRandom be a pass gen?\n Let's test it"
puts SecureRandom.alphanumeric

#Could I gen a passphrase with Ruby?
puts '3. My other passphrase gen'
phrase= "When it all goes wrong again"
puts "Seed phrase: #{phrase}"
#puts phrase.index("ing")
print "length: ",phrase.length
print "\nDoes #{phrase} include <ing>?: ",phrase.include?("ing")
print "\nHow many n's in #{phrase}: ", phrase.count("n")
if phrase.size == 0
   puts "Seed phrase is empty"
else
   puts "\n3.1 New passphrase sorted..."
   #in join use a delimiter if you wish
   phrase2 = phrase.split('').uniq.sort.join(" ")
   puts phrase2
   puts "3.2 Random order of #{phrase}:"
   phrase2 = phrase.split('').uniq.shuffle.join(" ")
   puts phrase2
   print "Final length: ",phrase2.length
   #puts phrase[0,6] #output numbers only
end
#count chars of a string
puts ""
