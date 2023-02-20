def reverser
    yield.split.map { |word| word.reverse }.join(" ")
end

def adder(n=1,&p)
    value = p.call(n)
    value + n
end

def repeater(n=1)
    n.times do
    yield if block_given?
    end
end    