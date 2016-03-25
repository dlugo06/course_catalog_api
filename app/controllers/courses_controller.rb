require 'net/http'

class CoursesController < ApplicationController
  def index
    render json: Course.all
  end

  def udacity_api
    url = 'https://www.udacity.com/public-api/v0/courses'
    response = Net::HTTP.get(URI.parse(url))
    render json: response
  end
end
