s = "RLRRLLRLRL"
s = "RLLLLRRRLR"

# @param {String} s
# @return {Integer}
def balanced_string_split(s)
    return 0 if s.length<=1
    count =0 
    hash = reset_hash
    s.split('').each do |char|
        hash[char] = hash[char]+1
        if hash["L"] == hash["R"]
            count+=1 
            hash = reset_hash
        end
    end
    return count
end

def reset_hash
    {"L"=> 0 , "R" => 0 }
end

puts balanced_string_split(s)