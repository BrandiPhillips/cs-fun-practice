


def mirror(a)
# # if the length of the array is 0 => nothing to mirror
  if a.length == 0
   return a
  end

  # create new array for the return value
  new_a = []

  n = a.length
  i = 0
  while i < (n-1)
    new_a[i] = a[i]
    i +=1
    # mirror(a)
  end
  return reverse(a)
end

def reverse(a)
  new_a = mirror(a)
  n = (a.length -1)
  while n >= 0
    new_a << a[n]
    n -=1
    reverse(a)
  end
end



def switch_place(a)
  if a.length == 0 || a.length == 1
    return a
  end
  i = 0
  j = 1
  n = a.length
  while i <= (n-1)
    a[i] = a[j]
    a[j] = a[i]
    i += 2
    j += 2
    # switch_place(a)
  end
  return a
end

#  Test

a = [2,4,6,8,10]

puts switch_place(a).to_s

puts mirror(a).to_s
