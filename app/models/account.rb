class Account < ApplicationRecord
    has_many :contacts
    has_many :opportunities

    def self.ransackable_attributes(auth_object = nil)
        ["id", "id_value", "industry", "name", "created_at", "updated_at", "website"]
    end

    def self.ransackable_associations(auth_object = nil)
        ["contacts", "opportunities"]
    end
end