require 'pry-byebug'

def bubble_sort(arr)
  flag = true
  until !flag
    flag = false
    arr.each_with_index do |element, index|
      if(index !=(arr.length-1) && element > arr[index+1])
        arr[index] = arr[index+1]
        arr[index+1] = element
        flag = true
        # binding.pry
      end
    end
  end
  return arr
end

p bubble_sort([4,3,78,2,0,2])
