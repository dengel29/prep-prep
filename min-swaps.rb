require 'pry-byebug'
arr = [1, 3, 5, 2, 4, 6, 9, 10, 7, 8]
arr2 = [4,3,1,2]

def min_swaps(arr)
  current_position = 0
  swap_count = 0
  last_okay = false

  while current_position < arr.length do
    num = arr[current_position]
    binding.pry
    #  number is in correct place, go on
    if num == current_position + 1
      current_position += 1
      last_okay = true
      next
    #  number not in correct place, swap into correct place and set current_position back to zero
    elsif num != current_position + 1
      arr.insert(num - 1, arr.delete_at(current_position))
      arr.insert(current_position, arr.delete_at(num-2))
      if !last_okay
        current_position = 0
      end
      swap_count += 1
    end
  end
end

min_swaps(arr)

# def min_swaps(arr, increment = 0, counter = 0)
#   partition = arr.length / 2
#   arr1 = arr.take_while {|i| i < partition }
#   arr2 = arr.take_while {|i| i >= partition }
#   puts arr1
#   [arr1, arr2].each do |arr|
#     if arr === arr.sort 
#       puts counter
#     elsif arr.first == arr.length 
#       arr.delete_at(0)
#       arr.insert(0, arr.delete_at(arr.length - 1))
#       arr << arr.length + 1
#       increment = 0
#       counter += 1
#       min_swaps(arr, increment, counter)
#     elsif arr[increment] < arr[increment + 1]
#       increment += 1
#       counter += 0
#       min_swaps(arr, increment, counter)
#     elsif arr[increment] > arr[increment + 1]
#       arr.insert(increment, arr.delete_at(increment + 1))
#       increment = 0
#       counter += 1
#       min_swaps(arr, increment, counter)
#     end
#   end
# end

min_swaps(arr)
  