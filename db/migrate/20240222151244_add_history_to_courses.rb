class AddHistoryToCourses < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :history, :text
  end
end
