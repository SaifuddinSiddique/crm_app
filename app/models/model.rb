class Model < ApplicationRecord
    
    def self.ransackable_attributes(auth_object = nil)
      ["id", "name", "description", "created_at", "updated_at"]
    end
end