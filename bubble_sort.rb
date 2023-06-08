def bubble_sort(array)
  n = array.length
  loop do
    swapped = false
    for index in 1..n - 1 do
      next unless array[index - 1] > array[index]

      temp = array[index]
      array[index] = array[index - 1]
      array[index - 1] = temp
      swapped = true
    end
    break unless swapped
  end
  array
end

p bubble_sort([4, 3, 78, 2, 0, 2])
