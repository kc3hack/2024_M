class Course < ApplicationRecord
    
    def waypoints_list
        waypoints.split(',').map(&:strip) if waypoints.present?
      end

    def waypoints_list=(values)
        self.waypoints = values.join(', ') if values.present?
    end

    def transportation_list
      transportation.split(',').map(&:strip) if transportation.present?
    end
    
    def transportation_list=(values)
      self.transportation = values.join(', ') if values.present?
    end

    def transportation_origin_list
      read_attribute(:transportation)
    end
  
    def transportation_origin_list=(value)
      write_attribute(:transportation, value)
    end

    
end
