class Report < ApplicationRecord
    belongs_to :user
  
    def self.ransackable_attributes(auth_object = nil)
      ["id", "title", "content", "created_at", "updated_at"]
    end

    def self.ransackable_associations(auth_object = nil)
        ["user"]
    end
end
  