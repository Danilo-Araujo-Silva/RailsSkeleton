class UserPermission < ApplicationRecord
  belongs_to :user
  belongs_to :permission

  validates :grant, presence: { message: 'must be defined.'}, allow_blank: true

  @@grant_types = ['', '<', '<=', '=', '>', '>=', '<=>']

  def _sanitize
    super

    if !(@@grant_types.include? self.grant)
      self.grant = nil
    end
  end

  def _validate
    super
  end
end
