puts "Enter the text you would like to be searched"
text = gets.chomp
puts "Enter the word you would like redacted"
redact = gets.chomp.downcase

words = text.split(" ")

words.each do |word|
  new_string = ''
  if word.downcase.gsub(/[[:punct:]]/, '') == redact
    word.gsub!(word, 'REDACTED')
  end
  new_string = words.join(' ')
end