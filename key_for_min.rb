# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
    name_hash = {:taylor => 410, :david => 26, :adam => 1}
name_hash = {:taylor => 10, :david => 50, :adam => 17}
name_hash = {}

def key_for_min_value(name_hash)
  lowest_key = name_hash.reduce do |key, value|
    key.last > value.last ? value : key
  end
    if name_hash == {}
      lowest_key
    else
      lowest_key.first
    end
end

# Since we weren't allowed to use #keys, #values, #min, #sort and #min_by methods, we had to find a way to locate the lowest value, but return the key associated with that lowest value. The method had to pass 3 tests, to show that :adam and :blake were the keys with the lowest value, and if the hash was empty, nil should be returned. It took me some time to figure out how I can find the lowest key/value pair without using the restricted methods. I found an alternative through the REDUCE method.

# Reduce method reduces a list by comparing entries. Each hash gets passed in as an array with 2 elements. Since we're iterating a symbol (the key) through the block, each element in the collection will be passed to the named method of memo (an accumulator value) in which it becomes the new value for the memo. The final value of memo is the returned value for the method.

# Inject "captures" the values or rathers returns the sum of all the values. The key is value.first and value is value.last.

# I defined the iteration into a variable "lowest_key". Within the iteration, as a terany operator we can code "if key.last is greater than value.last then return value, if it's not true then return key."

# After the iteration, we include more logic. If the hash (name_hash) is an empty hash, we return the iteration which should be nil. If the hash is not empty, then we print the key of the lowest value, which is under value.last.


end