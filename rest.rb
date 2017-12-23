require 'rest-client'

BASE_ADDR = 'http://www.bing.com'

def search(param)
  req = RestClient.get(BASE_ADDR, { params: { q: param } })
end

puts "what do you want to search?"
answer = gets.chomp

query = search(answer)

puts query.code
puts query.headers
