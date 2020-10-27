require 'rack'
#instance name Proc has a method tha automatically run the block that initialized it.
my_server = Proc.new do
  [200, { 'Content-Type' => 'text/html'}, ['<em>Hello</em>']]
end

run my_server