class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  before_validation :sanitize

  def sanitize
    sanitize_created_by_and_updated_by
  end

  def sanitize_created_by_and_updated_by
    if self.created_by_id.nil?
      self.created_by_id = 1
    end

    self.updated_by_id = 1
  end

end
