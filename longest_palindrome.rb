# Longest Palindrome
#
# Find the length of the longest substring in the given string s that is the same in reverse.
#
# As an example, if the input was “I like racecars that go fast”, the substring (racecar) length would be 7.
#
# If the length of the input string is 0, return value must be 0.
# Example:
#
# "a" -> 1
# "aab" -> 2
# "abcde" -> 1
# "zzbaabcd" -> 4
# "" -> 0

#
def longest_palindrome s
  return 0 if s.empty?
  arr = s.split("")
  longest = 1
  arr.each_with_index do |c1, idx1|
    arr[idx1 + 1..-1].each do |c2|
      c1 << c2
      curr_leng = c1.length
      longest = curr_leng if c1 == c1.reverse && curr_leng > longest
    end
  end
  longest
end
