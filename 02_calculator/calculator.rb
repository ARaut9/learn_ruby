#write your code here

def add a, b
    a + b
end

def subtract a, b
    a - b
end

def sum array
    total = 0
    array.each do |i|
        total = total + i
    end
    total
end

def multiply *args
    # set result equal to first argument
    result = args[0]
    # keep multiplying result with other arguments
    args.each do |arg|
        if (arg != result)
            result = result * arg
        end
    end
    result
end

def power a, b
    res = a
    b = b - 1
    b.times do
        res = res * a
    end
    res
end

def factorial i
    if i > 0
    counter = i - 1
    fact = i
    counter.times do
        i = i - 1
        fact = fact * i
    end
    else
        fact = 1
    end
    fact
end