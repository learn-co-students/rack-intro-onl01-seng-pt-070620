require 'rack'
my_server = Proc.new do
    [200, {'Content-Type' => 'text/html'}, ['<em>Hello World</em>']]
end

run my_server