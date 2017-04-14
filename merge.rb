def merge(a1, a2, result = [])
	until a1.empty?||a2.empty?
		if a1.first <= a2.first
			result << a1.shift
		else
			result << a2.shift
		end
	end
	until a1.empty?
		result << a1.shift
	end
	until a2.empty?
		result << a2.shift
	end
	result
end

def mergeSort(arr)
	return arr if arr.size <= 1
	a1 = arr[0..((arr.length/2)-1)]
	a2 = arr[(arr.length/2)..(arr.length-1)]
	a1 = mergeSort(a1)
	a2 = mergeSort(a2)
	merge(a1, a2)
end

arr1 = [4,1,7,10,8]
print mergeSort(arr1)
