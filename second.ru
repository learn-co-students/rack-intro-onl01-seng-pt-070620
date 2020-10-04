require 'rack'

#Something that responds to call, 
# thats what Rack demands 

class MyServer 
    def call(env)
        return [200, {'Content-Type' =>
        'text/html'}, pretty_response]
    end 

    def pretty_response 
        (Time.now_to_i % 2).zero? ? ["
        <em>Hello</em>"] : ["<strong>Hello</strong>"]
    end 
end 

run MyServer.new 