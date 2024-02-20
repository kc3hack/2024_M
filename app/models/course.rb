class Course < ApplicationRecord
    
    def waypoints_list
        waypoints.split(',').map(&:strip) if waypoints.present?
      end

    def waypoints_list=(values)
        self.waypoints = values.join(', ') if values.present?
    end
end
