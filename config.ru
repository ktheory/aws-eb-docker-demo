require 'bundler/setup'

app = ->(env) {
  body = "Hello World!"
  body << " x = #{ENV['x'].inspect}"

  [200, {'Content-Type' => 'text/plain'}, [body] ]
}

run app
