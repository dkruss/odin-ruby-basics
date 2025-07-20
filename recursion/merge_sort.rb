def merge_sort(list)
  if list.length <= 1
    list
  else
    left = list[..(list.length / 2) - 1]
    right = list[(list.length / 2)..]
    #puts "Before merge: Left: #{left} | Right: #{right}"

    left = merge_sort(left)
    right = merge_sort(right)

    result = []
    until left.empty? && right.empty? do
      if left.nil? || left.empty?
        result << right.shift
      elsif right.nil? || right.empty?
        result << left.shift
      elsif left[0] < right[0]
        result << left.shift
      else
        result << right.shift
      end
    end
    result
  end
end

#p merge_sort([1,0,2,3,4])
#p merge_sort([1,0,3,2,4])
p merge_sort([9,1,0,2,3,5,4,7,6])