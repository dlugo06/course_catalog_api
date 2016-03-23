class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :level
      t.text :expected_learning

      t.timestamps null: false
    end
  end
end
