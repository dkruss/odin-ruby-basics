def caesar_cipher(text, shift)
  encrypted = ""
  alpha = "abcdefghijklmnopqrstuvwxyz"
  alpha_upper = alpha.upcase
  
  for letter in text.split("")
    if alpha.include?(letter)
      encrypted << alpha[(alpha.index(letter) + shift) % 26]
      # if character is lowercase letter, find its index in the lowercase alphabet, 
      # shift it, then add the shifted letter to the 'encrypted' string
    elsif alpha_upper.include?(letter)
      encrypted << alpha_upper[(alpha_upper.index(letter) + shift) % 26]
      # similar to above, except checking the uppercase alphabet
    else
      encrypted << letter
      # if character is not a letter (e.g. space or punctuation mark),
      # add the character to the 'encrypted' string
    end
  end
  encrypted
end

puts caesar_cipher("What a string!", 5)
puts caesar_cipher("Bmfy f xywnsl!", -5)
puts caesar_cipher("Bmfy f xywnsl!", -4)