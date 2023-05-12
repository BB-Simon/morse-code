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
  # puts chars
  decoed_word = []
  chars.each do |morse_char|
    decoed_word.push(decode_char(morse_char))
  end
  # puts decoed_word
  decoed_word.join("")
end

def morse_decoder(message)
  m_array = message.split('   ')
  puts m_array.class

  deoced_message = []
  m_array.each do |morse_word|
    deoced_message.push(decode_word(morse_word))
  end
  puts deoced_message
  deoced_message.join(' ')
end

m = morse_decoder('      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
puts mgit 