class RenameDestinationColumnToCourses < ActiveRecord::Migration[6.1]
  def change
    rename_column :courses, :Destination, :destination
  end
end
