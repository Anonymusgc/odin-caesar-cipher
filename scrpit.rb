# frozen_string_literal: true

def char_in_range(char, shift)
  char_num = char.ord
  char_after_shift = (char_num + shift)
  case char_num
  when 97..122
    char_after_shift > 122 ? (96 + (char_after_shift - 122)).chr : char_after_shift.chr
  when 65..90
    char_after_shift > 90 ? (64 + (char_after_shift - 90)).chr : char_after_shift.chr
  else
    char
  end
end

def caesar_cipher(string, shift)
  chars = string.split('')
  arr = chars.map do |char|
    char_in_range(char, shift)
  end
  puts arr.join('')
end

caesar_cipher('Z random sentence!', 2)
