# Move the first letter of each word to the end of it, then add 'ay' to the end of the word.

def pig_it text
  arr = []
  text = text.split
  text.each do |word|
    if ["!", "?"].include?(word)
    arr << word
    next
    end
    arr << word[1..-1] + word[0] + "ay"
  end
  arr.join(" ")
end
