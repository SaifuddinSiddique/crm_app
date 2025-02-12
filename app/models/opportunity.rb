class Opportunity < ApplicationRecord
    belongs_to :account
    belongs_to :contact
  
    def self.ransackable_attributes(auth_object = nil)
      ["id", "name", "amount", "close_date", "stage", "created_at", "updated_at"]
    end
    
    def self.ransackable_associations(auth_object = nil)
        ["account", "contact"]
    end
end
  