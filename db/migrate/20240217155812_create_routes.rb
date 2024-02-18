class CreateRoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :routes do |t|
      t.text :start
      t.text :goal
      t.text :waypoints

      t.timestamps
    end
  end
end
