def caesar_cipher(sentence, shift_value)
  sentence_array = sentence.split('')
  new_sentence_array = []

  sentence_array.each do |char|
    new_sentence_array << case char
                          when /[[:upper:]]/
                            ('A'.ord + calc_offset(char, shift_value, 'upper'))
                          when /[[:lower:]]/
                            ('a'.ord + calc_offset(char, shift_value, 'lower'))
                          else
                            char.ord
                          end
  end
  new_sentence_array = new_sentence_array.map { |char| char.chr }

  p new_sentence_array.join
end

def calc_offset(char, shift_value, type)
  case type
  when 'upper'
    adjusted_index = char.ord - 'A'.ord
    (adjusted_index + shift_value) % 26

  when 'lower'
    adjusted_index = char.ord - 'a'.ord
    (adjusted_index + shift_value) % 26

  else
    0
  end
end

caesar_cipher('Hello!', 1)
caesar_cipher('What a string!', 5)