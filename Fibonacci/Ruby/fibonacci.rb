###Fibonacci series
 
def fibonacci(n)
    a = 0
    b = 1
    counter = 1
    puts a
    while counter <= 5
        a,b = b,a+b
        puts a
        counter += 1
    end
end

fibonacci(5)