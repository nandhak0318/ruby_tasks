require 'rest_client'
require 'json'

data =  RestClient.get 'https://jsonplaceholder.typicode.com/posts/'
obj = JSON.parse(data)

obj.each do |item|
    puts item['title']
end