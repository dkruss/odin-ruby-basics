def fibs(n)
  sequence = []
  for idx in 1..n
    if idx == 1
      sequence << 0
    elsif idx == 2
      sequence << 1
    else
      sequence << sequence[-2] + sequence[-1]
    end
  end
  sequence
end

def fibs_rec(n)
  if n == 1
    [0]
  elsif n == 2
    [0,1]
  else
    previous = fibs_rec(n-1)
    new = previous[-1] + previous[-2]
    previous << new
  end
end

p fibs(1)
p fibs_rec(1)

p fibs(2)
p fibs_rec(2)

p fibs(8)
p fibs_rec(8)