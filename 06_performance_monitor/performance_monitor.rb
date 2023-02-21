def measure(n=1)
    avg_time=0

    n.times do
        start_time=Time.now
        yield
        avg_time+=Time.now-start_time
    end
    avg_time/n
end