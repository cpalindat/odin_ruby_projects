def caesar_cipher(sentence, shift_value)

  sentence_array = sentence.split('')
  new_sentence_array = []

  sentence_array.each do |char|
    case char
    when /[[:upper:]]/
      new_sentence_array << ('A'.ord + calc_offset(char, shift_value, 'upper'))
    when /[[:lower:]]/
      new_sentence_array << ('a'.ord + calc_offset(char, shift_value, 'lower'))
    else
      new_sentence_array << char.ord
    end
  end 

  new_sentence_array = new_sentence_array.map { |char| char.chr}

  p new_sentence_array.join
end

def calc_offset(char, shift_value, type)
  case type
  when 'upper'
    adjusted_index = char.ord - 'A'.ord
    offset = (adjusted_index + shift_value) % 26
    return offset
  when 'lower'
    adjusted_index = char.ord - 'a'.ord
    offset = (adjusted_index + shift_value) % 26
    return offset
  else
    return 0
  end
end

caesar_cipher("Hello!", 1)
caesar_cipher("What a string!", 5)

