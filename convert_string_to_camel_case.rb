# Complete the method/function so that it converts dash/underscore delimited words into camel casing. The first word within the output should be capitalized only if the original word was capitalized.
#
# Examples:
#
# # returns "theStealthWarrior"
# to_camel_case("the-stealth-warrior")
#
# # returns "TheStealthWarrior"
# to_camel_case("The_Stealth_Warrior")

def to_camel_case(str)
    arr = str.split("")
    arr.each_with_index do |el, idx|
      if ["-", "_"].include?(el)
        str[idx + 1] = str[idx + 1].upcase
        end
    end
    str = str.gsub(/[-_]/,"")
    str
end
