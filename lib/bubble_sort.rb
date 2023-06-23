# frozen_string_literal: true

def swap_bubble_sort(array, index)
  temp = array[index]
  array[index] = array[index - 1]
  array[index - 1] = temp
end

def bubble_sort(array)
  loop do
    swapped = false
    (1..array.length - 1).each do |index|
      next unless array[index - 1] > array[index]

      array = swap_bubble_sort(array, index)
      swapped = true
    end
    break unless swapped
  end
  array
end

p bubble_sort([4, 3, 78, 2, 0, 2])
