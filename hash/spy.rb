def solution(clothes)
  hash = clothes.to_h
  cloth_sizes = hash.group_by { |_, v| v } .map { |_, v| v.size }
  result = clothes.size
  cloth_sizes.size.times do |i|
    sum = i.zero? ? 0 : cloth_sizes[0..i].inject(:*)
    result += sum
  end
  result
end
