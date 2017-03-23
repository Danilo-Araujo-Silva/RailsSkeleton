class Permission < ApplicationRecord
  has_many :children, :class_name => Permission.name, :foreign_key => "parent_id"
  belongs_to :parent, :class_name => Permission.name, :foreign_key => "parent_id", optional: true

  #TODO Add breadcrumb methods.

  def _sanitize
    super

    if !self.parent.nil?
      self.parent_id = self.parent.id
    end
  end

  def _validate
    super
  end

end
