class Permission < ApplicationRecord
  has_many :children, class_name: 'Permission', foreign_key: 'parent_id'

  belongs_to :parent, class_name: 'Permission'
end
