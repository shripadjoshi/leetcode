def kids_with_candies(candies, extra_candies)
    max_candies = candies.max
    distribution = []
    candies.each{|candy| distribution << ((candy + extra_candies) >= max_candies)}
    distribution
 end
  
 puts kids_with_candies([2,3,5,1,3], 3)