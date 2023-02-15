def add(a,b)
    a+b
end
def subtract(a,b)
    a-b
end

def sum(nums)
    sum=0
    for num in nums
        sum += num
    end
    return sum
end

def mul(nums)
    mul=1
    for num in nums
        mul *= num
    end
    return mul
end

def pow(a,b)
   a**b
end

def fact(n)
    if n==0 or n==1
        return 1
    return n*fact(n-1)
end

    
        
