def custom_zip(arr1, arr2)
  final = []
  arr1.each_with_index do |item, index|
    final << [item,arr2[index]]
  end
  final
end

p custom_zip([1,2,3],["a","b","c"])
