# @param {Integer} num
# @return {Integer}
def number_of_steps (num, step = 1)
    return step if num == 1
    num % 2 == 0 ? num = num / 2 : num -= 1
    step += 1
    number_of_steps(num, step)
end


puts number_of_steps(14)