class User < ActiveRecord::Base

  has_secure_password

  ROLE = %W(user veteran moderator admin)
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :role, presence: true

  def role_is?(minimum_role)
    ROLE.index(self.role) >= ROLE.index(minimum_role)
  end
end
