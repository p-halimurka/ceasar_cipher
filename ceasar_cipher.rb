def ceasar_cipher(string, factor)
  result = string.downcase.split(//).map do |letter|
    if ("a".."z").to_a.none?(letter)
      letter
    elsif (("a".."z").to_a.index(letter) + factor) > 26
      letter.replace(("a".."z").to_a.concat(("a".."z").to_a)[("a".."z").to_a.index(letter) + factor])
    elsif (("a".."z").to_a.index(letter) + factor) < 26
      letter.replace(("a".."z").to_a[("a".."z").to_a.index(letter) + factor])
    else
      letter
    end
  end
  result.join.capitalize
end