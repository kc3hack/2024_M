class AddWaypointsToCourses < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :waypoints, :text
  end
end
