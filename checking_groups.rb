# In English and programming, groups can be made using symbols such as "()" and "{}" that change meaning. However, these groups must be closed in the correct order to maintain correct syntax.
#
# Your job in this kata will be to make a program that checks a string for correct grouping. For instance, the following groups are done correctly:
#
# ({})
# [[]()]
# [{()}]
#
# The next are done incorrectly
#
# {(})
# ([]
# [])
#
# A correct string cannot close groups in the wrong order, open a group but fail to close it, or close a group before it is opened.
#
# Your function will take an input string that may contain any of the symbols "()" "{}" or "[]" to create groups.
#
# It should return True if the string is empty or otherwise grouped correctly, or False if it is grouped incorrectly.

def group_check(s)
  brackets = {"(" => ")", "[" => "]", "{" => "}"}
  arr = []
  i = 0
  while i < s.length
    while brackets.keys.include?(s[i])
      arr << s[i]
      i += 1
    end
    while brackets.values.include?(s[i])
      arr << s[i]
      return false if brackets[arr[-2]] != arr[-1]
      arr.pop(2)
      i += 1
    end
  end
  return false if !arr.empty?
  true
end
