def is_multiple_of_3_or_5?(int)
  return ((int%3==0) || (int%5==0))
end

def sum_of_3or5_multiples(int)
  sum=0
  for i in (1..int)
    sum+=i if  is_multiple_of_3_or_5?(i)
  end
  return sum
end

puts sum_of_3or5_multiples(5)