def isPrime(num)
  return false if num < 2
  !(2...num).any? { |i| num % i == 0 }
end
