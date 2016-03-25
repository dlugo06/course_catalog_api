require 'net/http'
require 'json'
Course.destroy_all

url = 'https://www.udacity.com/public-api/v0/courses'
response = Net::HTTP.get(URI.parse(url))
parsed_data = JSON.parse(response, symbolize_names: true)

parsed_data[:courses].each do |course|
  data = {}
  data[:title] = course[:title]
  data[:level] = course[:level]
  data[:expected_learning] = course[:expected_learning]
  data[:course_key] = course[:key]

  Course.create(data)
end
