# SOLVED
# original question found here: https://www.interviewcake.com/question/ruby/product-of-other-numbers
def get_products_of_all_ints_except_index(arr)
  products_array = []
  
  arr.each_with_index do |num, index|
    # new array with number at the current index removed
    
    removed_num = arr.delete_at(index)

    # multiply the other numbers
    # push that into the products array
    products_array << arr.reduce(:*)

    # reinsert removed number
    arr.insert(index, removed_num)
    
  end
  puts products_array
end

array = [2, 7, 3, 4, 2, 9, 2]
get_products_of_all_ints_except_index(array)