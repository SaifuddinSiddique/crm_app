class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attribute :role, :string
  enum role: { admin: "admin", standard: "standard", guest: "guest" }

  after_initialize :set_default_role, if: -> { role.blank? }

  def set_default_role
    self.role = "guest" if self.role.blank?
  end

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email", "encrypted_password", "id", "id_value", "remember_created_at", "reset_password_sent_at", "reset_password_token", "updated_at"]
  end

  def admin?
    role == "admin"
  end
end
