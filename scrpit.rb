# frozen_string_literal: true

def get_shifted_char(char_num, shift, min, max)
  char_after_shift = (char_num + shift)
  if char_after_shift > max
    ((min - 1) + (char_after_shift - max)).chr
  elsif char_after_shift < min
    ((max + 1) + (char_after_shift - min)).chr
  else
    char_after_shift.chr
  end
end

def caesar_cipher(string, shift)
  chars = string.split('')
  arr = chars.map do |char|
    char_num = char.ord
    case char_num
    when 97..122 then get_shifted_char(char_num, shift, 97, 122)
    when 65..90 then get_shifted_char(char_num, shift, 65, 90)
    else char
    end
  end
  puts arr.join('')
end

caesar_cipher('What a string!', 5)
