# Write a function that takes an (unsigned) integer as input, and returns the number of bits that are equal to one in the binary representation of that number.
#
# Example: The binary representation of 1234 is 10011010010, so the function should return 5 in this case
def count_bits(n)
  # TODO: Program me
  bin_arr = []
  loop do
    bin_arr << n % 2
    break if n <= 1
    n = n/2
  end
  bin_arr.reduce(:+)
end
