def bubble_sort(array)
	sorted_array = array
	while not finished?(sorted_array)
		sorted_array.each_with_index do |item,index|
			break if index == (sorted_array.size - 1)
			if item > sorted_array[index + 1]
				sorted_array[index], sorted_array[index+1] = sorted_array[index + 1], sorted_array[index]
			end
		end
	end
	sorted_array
end

def finished?(array)
	for i in (0..array.size-2)
		if array[i] > array[i+1]
			return false
		end
	end
	true
end

p finished?([2,8,9,6,5,4,5])
p finished?([1,2,3,4,5,6,7])

p bubble_sort([3,2,1,1,3,6,5,12,23,45,12])