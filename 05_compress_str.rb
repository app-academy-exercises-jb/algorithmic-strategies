# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

def compress_str(str)
  result = ""
  count = 0
  cur = str[0]

  str.each_char.with_index { |c, idx|
    if c == cur
      count += 1
    elsif c != cur
      count > 1 ? result += count.to_s + cur : result += cur
      cur = c
      count = 1
    end
    if str[idx+1] == nil
      count > 1 ? result += count.to_s + c: result += c
    end
  }
  
  result
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
