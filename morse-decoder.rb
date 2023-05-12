@MORSE_CODE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

def decode_char(morse_char)
  decoded_char = @MORSE_CODE[morse_char]
  decoded_char
end

def decode_word(morse_word)
  chars = morse_word.split(' ')
  doceded_word = ''
  chars.each do |morse_char|
    doceded_word += decode_char(morse_char)
  end
  doceded_word
end

def decode_message(morse_message)
  morse_words = morse_message.split('   ')
  decoded_message = []
  morse_words.each do |morse_word|
    decoded_message.push(decode_word(morse_word))
  end
  decoded_message.join(' ').downcase
end

m = decode_message('      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
puts m