def caesar_cipher(string, shift)
  chars = string.split('')
  arr = chars.map do |char|
    char_num = char.ord
    case char_num
    when 97..122
      (char_num + shift).chr
    when 65..90
      (char_num + shift).chr
    else
      char
    end
  end.join('')
  # arr = word_arr.map do |word|
  #   word.split('').map { |letter| (letter.ord + shift).chr }.join('')
  # end.join(' ')
  p arr
end

caesar_cipher('A random sentence!', 1)
