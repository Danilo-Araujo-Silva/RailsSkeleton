class Permission < ApplicationRecord
  has_many :children, :class_name => "Permission", :foreign_key => "parent_id"
  belongs_to :parent, :class_name => "Permission", :foreign_key => "parent_id", optional: true

  def _sanitize
    super

    if !self.parent.nil?
      self.parent_id = self.parent.id
    end
  end

end
