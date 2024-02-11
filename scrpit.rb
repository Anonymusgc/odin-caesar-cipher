def caesar_cipher(string, shift)
  word_arr = string.split(" ")
  arr =
    word_arr.map do |word|
      word.split("").map { |letter| (letter.ord + shift).chr }.join("")
    end
  p arr.join(" ")
end

caesar_cipher("A random sentence", 1)
