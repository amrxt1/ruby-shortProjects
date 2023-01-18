def bubble_sort(arr)
    for i in 0..arr.size-1 do
        for j in 0..arr.size-1 do
            (j == arr.size-1) ? next : nil
            (arr[j]>arr[j+1]) ? (arr[j], arr[j + 1] = arr[j + 1], arr[j]) : nil 
        end
    end
    arr
end

arr = [4,3,78,2,0,2,-2,0.3]
p bubble_sort(arr)