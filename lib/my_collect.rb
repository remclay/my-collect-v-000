def my_collect(collection)
  new_collection = []
  i = 0
  while i < collection.length
    new_collection << yield(collection[i])
    i += 1
  end
  new_collection
end

countries = ['greece', 'italy', 'germany', 'france']
my_collect(countries) do |country| country.capitalize
end
