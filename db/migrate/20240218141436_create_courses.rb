class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.text :start
      t.text :Destination

      t.timestamps
    end
  end
end
