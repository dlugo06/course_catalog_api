class CoursesController < ApplicationController
  def courses
    render json: {greeting: "Hello"}
  end
end
