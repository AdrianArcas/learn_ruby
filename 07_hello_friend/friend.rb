class Friend

    def greeting(who=nil)
        if not who
            return "Hello!"
        else
            return "Hello, #{who}!"
        end
    end

end