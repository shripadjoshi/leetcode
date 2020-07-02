# @param {Integer} n
# @param {Integer} start
# @return {Integer}
def xor_operation(n, start)
    return 'Error' if n < 1 || n > 1000
    return 'Error' if start < 0 || start > 1000
    accum = 0
    0.upto(n-1) {|num| accum = accum ^ start + 2 * num}
    accum
end

puts xor_operation(5, 0)