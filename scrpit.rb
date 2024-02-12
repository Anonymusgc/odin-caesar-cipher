def caesar_cipher(string, shift)
  chars = string.split('')
  arr = chars.map do |char|
    char_num = char.ord
    case char_num
    when 97..122
      (char_num + shift) > 122 ? (96 + ((char_num + shift) - 122)).chr : (char_num + shift).chr
    when 65..90
      (char_num + shift) > 90 ? (64 + ((char_num + shift) - 90)).chr : (char_num + shift).chr
    else
      char
    end
  end
  puts arr.join('')
end

caesar_cipher('Z random sentence!', 2)
