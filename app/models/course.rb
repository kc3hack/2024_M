class Course < ApplicationRecord
    
    def waypoints_list
        waypoints.split(',').map(&:strip) if waypoints.present?
      end

    def waypoints_list=(values)
        self.waypoints = values.join(', ') if values.present?
    end

    def transportation
        read_attribute(:transportation)
      end
    
      def transportation=(value)
        write_attribute(:transportation, value)
      end
end
