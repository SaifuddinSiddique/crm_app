class Contact < ApplicationRecord
    belongs_to :account
    has_many :opportunities, dependent: :destroy

    validates :first_name, :last_name, :email, presence: true
    validates :email, uniqueness: true
    
    def self.ransackable_attributes(auth_object = nil)
      ["id", "first_name", "last_name", "email", "phone", "created_at", "updated_at"]
    end

    def self.ransackable_associations(auth_object = nil)
        ["account", "opportunities"]
    end
end
  