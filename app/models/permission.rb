class Permission < ApplicationRecord
  # has_many :children, class_name: 'Permission', foreign_key: 'parent_id'

  # belongs_to :parent, class_name: 'Permission'

  before_validation :_sanitize

  def _sanitize
    if !(self.created_by > 0)
      self.created_by = 1
    end

    self.updated_by = 1
  end
end
