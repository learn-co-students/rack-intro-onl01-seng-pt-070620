require 'rack'

class MyServer
    def call(env)
        return [ 200, {'Content-Type' => 'text/html'}, pretty_response ]
      end
     
      def pretty_response
        (Time.now.to_i % 2).zero? ?  ["<em>it is time to break dance </em>"] : ["<strong>next year it is going to be way better!@@!</strong>"]
      end
    end
     
    run MyServer.new