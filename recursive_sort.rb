def sort(some_array) # This "wraps" recursive_sort.
recursive_sort(some_array, [])
end

def recursive_sort(unsorted_array, sorted_array)
  if unsorted_array.count == 1
    return sorted_array << unsorted_array[0]
  end
  b = 0
  min = 0
  while min == 0
    min = 1
    i = 0
    while i < unsorted_array.length
      min = 0 if unsorted_array[b].to_s.downcase > unsorted_array[i].to_s.downcase
      i+=1
    end
    if min == 1
      sorted_array << unsorted_array[b]
      unsorted_array.delete_at(b)
    else
      b += 1
    end
  end
  recursive_sort(unsorted_array, sorted_array)
end
