# frozen_string_literal: true

def bubble_sort(arr)
  return arr if arr.length <= 1

  i = 0
  loop do
    if i == arr.length - 1
      break if arr == arr.sort

      i = 0
    end
    arr[i], arr[i + 1] = arr[i + 1], arr[i] if arr[i] > arr[i + 1]
    i += 1
  end
  yield(arr)
end

bubble_sort([4, 3, 78, 2, 0, 2]) do |arr|
  puts arr
end
