class Permission < ApplicationRecord
  # has_many :children, :class_name => "Permission", :foreign_key => "parent_id"
  # belongs_to :parent, :class_name => "Permission", :foreign_key => "parent_id"

  before_validation :_sanitize

  def _sanitize
    # if !self.parent.nil?
    #   self.parent_id = self.parent.id
    # end

    if self.created_by.nil?
      self.created_by = 1
    end

    self.updated_by = 1
  end
end
