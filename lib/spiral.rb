Spiraler = ->(start, max) {
  width = max
  height = max - 1
  counter = start - 1
  x, y = -1, 0

  result = max.times.map { max.times.map { nil } }

  add_number_to_result = -> {
    counter += 1
    result[y][x] = counter
  }

  while width > 0
    [1, -1].each do |i|
      width.times do
        x += i
        add_number_to_result.call
      end
      width -= 1

      height.times do
        y += i
        add_number_to_result.call
      end
      height -= 1
    end
  end
  result
}
#
# Printer = ->(result) {
#   result.map do |row|
#     row.map { |v| v.to_s.rjust(3, " ") }.join("  ")
#   end.join("\n")
# }