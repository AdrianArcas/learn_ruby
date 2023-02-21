def add(a,b)
    a+b
end

def subtract(a,b)
    a-b
end

def sum(nums)
    #nums.reduce(:+)
    nums.reduce(0) { |num,sum| sum + num}
end

def mul(nums)
    #nums.reduce(:*)
    nums.reduce(1) { |num,mul| mul * num}
end

def pow(a,b)
   a**b
end

def fact(n)
    if n==0 or n==1
        return 1
        end
    return n*fact(n-1)
end

    
        
