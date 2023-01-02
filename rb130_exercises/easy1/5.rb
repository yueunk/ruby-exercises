# The following list contains the names of individuals who are pioneers in the field of computing or that have had a significant influence on the field. The names are in an encrypted form, though, using a simple (and incredibly weak) form of encryption called Rot13.

# Rot13 "rotate by 13 places"
  # helper method -- #rotate_by_13(chr)
    # add 13 to the character's ascii number
    # if the number exceeds 90, subtract the sum by 90 and add that to 65

  # main method -- #decipher(str)
    # iterate through the character of the str
    # convert each character to its rot13 counterpart if the character is alphabetical
    # join the string

ENCRYPTED_PIONEERS = [
  'Nqn Ybirynpr',
  'Tenpr Ubccre',
  'Nqryr Tbyqfgvar',
  'Nyna Ghevat',
  'Puneyrf Onoontr',
  'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv',
  'Wbua Ngnanfbss',
  'Ybvf Unvog',
  'Pynhqr Funaaba',
  'Fgrir Wbof',
  'Ovyy Tngrf',
  'Gvz Orearef-Yrr',
  'Fgrir Jbmavnx',
  'Xbaenq Mhfr',
  'Fve Nagbal Ubner',
  'Zneiva Zvafxl',
  'Lhxvuveb Zngfhzbgb',
  'Unllvz Fybavzfxv',
  'Tregehqr Oynapu'
].freeze
    
def rotate_by_13(chr)
  return chr if chr =~ /[^A-Za-z]/
  chr.upcase == chr ? (min, max = 'A'.ord, 'Z'.ord) : (min, max = 'a'.ord, 'z'.ord)
  num = chr.ord + 13
  num = chr.ord - 13 if num > max
  num.chr
end

def decipher(str)
  str.chars.each_with_object([]) { |chr, result| result << rotate_by_13(chr) }.join
end

p ENCRYPTED_PIONEERS.map { |name| puts decipher(name) }
# Nqn Ybirynpr
# Tenpr Ubccre
# Nqryr Tbyqfgvar
# Nyna Ghevat
# Puneyrf Onoontr
# Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv
# Wbua Ngnanfbss
# Ybvf Unvog
# Pynhqr Funaaba
# Fgrir Wbof
# Ovyy Tngrf
# Gvz Orearef-Yrr
# Fgrir Jbmavnx
# Xbaenq Mhfr
# Fve Nagbal Ubner
# Zneiva Zvafxl
# Lhxvuveb Zngfhzbgb
# Unllvz Fybavzfxv
# Tregehqr Oynapu

# redo during rb139
def rot13(enc)
  (0...enc.size).each do |idx|
    enc[idx] = convert(enc[idx])
  end
  
  enc
end

def convert(char)
  return char if char.match?(/[^a-zA-Z]/)

  char == char.downcase ? (mid_ord = 'a'.ord + 13) : (mid_ord = 'A'.ord + 13)
  char.ord < mid_ord ? (char.ord + 13).chr : (char.ord - 13).chr
end