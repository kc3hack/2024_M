class AddNewColumnToCourses < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :transportation_origin, :text
  end
end
