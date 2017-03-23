class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  before_validation :_sanitize

  validate :_validate

  def exists_created_by_id?
    self.has_attribute?(:created_by_id)
  end

  def exists_updated_by_id?
    self.has_attribute?(:updated_by_id)
  end

  def exists_created_by?
    if created_by.present?
      return true
    else
      return false
    end
  end

  def exists_updated_by?
    if updated_by.present?
      return true
    else
      return false
    end
  end

  def created_by
    if exists_created_by_id?
      if (
        self.instance_of?(User) and
        self.id == 1 # Indicates the root user.
      )
        return self
      end

      return User.find(self.created_by_id)
    else
      raise NoMethodError, "This model don't have an attribute called created_by_id."
    end
  end

  def updated_by
    if exists_updated_by_id?
      if (
        self.instance_of?(User) and
        self.id == 1
      )
        return self
      end

      return User.find(self.updated_by_id)
    else
      raise NoMethodError, "This model don't have an attribute called updated_by_id."
    end
  end

  def _sanitize
    sanitize_created_by_id_and_updated_by_id
  end

  def _validate
    validate_created_by_id_and_updated_by_id
  end

  def sanitize_created_by_id_and_updated_by_id
    sanitize_created_by_id
    sanitize_updated_by_id
  end

  def validate_created_by_id_and_updated_by_id
    validate_created_by_id
    validate_updated_by_id
  end

  def sanitize_created_by_id
    if exists_created_by_id?
      self.created_by_id = 1
    end
  end

  def sanitize_updated_by_id
    if exists_updated_by_id?
      self.updated_by_id = 1
    end
  end

  def validate_created_by_id
    if exists_created_by_id?
      if not self.created_by_id > 0
        raise ArgumentError, 'The attribute created_by_id should be greater than zero.'
      elsif !exists_created_by?
        raise ArgumentError, "The attribute created_by_id doesn't correspond to a valid user."
      end
    end
  end

  def validate_updated_by_id
    if exists_updated_by_id?
      if not self.updated_by_id > 0
        raise ArgumentError, 'The attribute updated_by_id should be greater than zero.'
      elsif !exists_updated_by?
        raise ArgumentError, "The attribute updated_by_id doesn't correspond to a valid user."
      end
    end
  end

end
