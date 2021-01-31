# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
```
2.7.2

```
* System dependencies

* Configuration

* Database creation
```
rake db:create
```
* Database initialization
```rake db:migrate```
* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
for development
```rails s```
For API sample
```
require 'uri'
require 'net/http'

url = URI("https://damp-plateau-34465.herokuapp.com/contacts")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE
request = Net::HTTP::Post.new(url)
request["content-type"] = 'multipart/form-data; boundary=----WebKitFormBoundary7MA4YWxkTrZu0gW'
request["cache-control"] = 'no-cache'
request["postman-token"] = '987a9f2c-3b39-b525-97b7-a33d4004a5c3'
request.body = "------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"contact[first_name]\"\r\n\r\nMOhtest\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"contact[last_name]\"\r\n\r\nTest\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"contact[email]\"\r\n\r\nTest@gmail.com\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"contact[phone_number]\"\r\n\r\n23456789\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"contact[message]\"\r\n\r\nTest\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW--"

response = http.request(request)
puts response.read_body
```


Heroku sample URL
```https://damp-plateau-34465.herokuapp.com/```
