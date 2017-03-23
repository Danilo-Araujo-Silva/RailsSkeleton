class Permission < ApplicationRecord
  has_many :children, :class_name => Permission.name, :foreign_key => "parent_id"
  belongs_to :parent, :class_name => Permission.name, :foreign_key => "parent_id", optional: true

  #TODO Add breadcrumb methods.

  @@permissions = {
    root: Permission.find_by_name('root'),
    developer: Permission.find_by_name('developer'),
    administrator: Permission.find_by_name('administrator'),
    user: Permission.find_by_name('user'),
    public: Permission.find_by_name('public')
  }.deep_freeze

  def self.permissions
    @@permissions
  end

  def permissions
    @@permissions
  end

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
