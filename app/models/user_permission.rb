class UserPermission < ApplicationRecord
  belongs_to :user
  belongs_to :permission

  def sanitize
    super
  end

end
