# frozen_string_literal: true

def bubble_sort(arr)
    return arr if arr.length < 1; end

    i = 0
    while true
        if i + 1 == arr.length
            break
        end
        if arr[i] > arr[i + 1]
            arr[i], arr[i + 1] = arr[i + 1], arr[i]
            #  yield(arr[i],arr[i + 1])
        end
        i += 1
    end
    puts arr

bubble_sort([4,3,78,2,0,2]) 
# {|first,second|
#   new_second = second
#   second = first
#   first = new_second
# }

# frozen_string_literal: true

# def bubble_sort(arr)
#     if arr.length < 1
#       return arr 
#     end
#       i = 0
#       while true
#         if i + 1 == arr.length
#           break
#         end
#         if arr[i] > arr[i + 1]
#           # puts arr[i]
#         yield(arr[i],arr[i + 1])
#         end
#         i += 1
#       end
#     puts arr
#   end
  
#   bubble_sort([4,3,78,2,0,2]) {|first,second|
#     new_second = second
#     second = first
#     first = new_second
#   }
  