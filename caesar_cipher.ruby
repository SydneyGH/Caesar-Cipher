def caesar_cipher(string, shift)
  alphabet = string.bytes
  alphabet.map! do |letter|
  if letter.between?(65, 90) || letter.between?(97, 122)
    letter += shift
    unless letter.between?(65, 90) || letter.between?(97, 122)
      letter -= 26
    end
  end
  letter.chr
  end
  alphabet.join
end

puts 'Enter a word to encrypt:'
string = gets.chomp
puts 'Enter a number:'
shift = gets.chomp.to_i
puts 'Here is your result:'
puts caesar_cipher(string, shift)