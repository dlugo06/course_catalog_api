class AddKeyToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :course_key, :string
  end
end
