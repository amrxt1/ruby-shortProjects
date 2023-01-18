
def caesar_cipher(string, shift_value)
    puts string.split("").map{|letter| transform(letter, shift_value)}.join("")
end
  
def transform(letter, shift_value)
    shift_value = shift_value > 26 ? shift_value % 26 : shift_value
  
    unless letter.between?('A','Z')||letter.between?('a','z')
      return letter
    end
    if letter.between?('A','Z')
      if ((letter.ord + shift_value).chr).between?('A','Z')
        return (letter.ord + shift_value).chr
      else
        return (letter.ord + shift_value - 26).chr
      end
    else
      if ((letter.ord + shift_value).chr).between?('a','z')
        return (letter.ord + shift_value).chr
      else
        return (letter.ord + shift_value - 26).chr
      end
    end
end  

caesar_cipher("What a string!", 5)  