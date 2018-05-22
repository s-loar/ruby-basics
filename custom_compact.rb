def custom_compact(array)
  final = []
  final = array.reject {|item| item.nil?}
  final
end

p custom_compact([1,nil,3,nil,nil,"p"])
