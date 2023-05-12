#
def no_dupes?(arr)
  freq = arr.inject(Hash.new(0)) { |hash, value| hash[value] += 1; hash }
  freq.reject { |key, value| value > 1 }.keys
end

#
def no_consecutive_repeats?(arr)
  (0...arr.length - 1).each do |i|
    if arr[i] == arr[i + 1]
      return false
    end
  end

  true
end
