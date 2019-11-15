# frozen_string_literal: true

def check_arr(arr)
  if arr.is_a?(Array)
    true
  else
    false
  end
end

def bubble_sort(arr)
  raise 'Please provide an array' unless check_arr(arr)

  loop do
    sorted = true
    (arr.length - 1).times do |i|
      next if i == arr.length - 1

      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        sorted = false
      end
    end
    break if sorted
  end
  arr
end

def bubble_sort_by(arr)
  raise 'Please provide an array' unless check_arr(arr)
  raise 'Please pass a block' unless block_given?

  loop do
    swapped = true
    (arr.length - 1).times do |i|
      if yield(arr[i], arr[i + 1]).positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = false
      end
    end
    break if swapped
  end
  arr
end
