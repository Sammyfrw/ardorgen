class User < ActiveRecord::Base

  has_secure_password

  ROLE = %W(user veteran moderator admin)
  validates :name, presence: true, uniqueness: true
  validates :role, presence: true

  def role_is?(role)
    ROLE.index(self.role) >= ROLE.index(role)
  end

end
