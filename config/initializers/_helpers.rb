module Enumerable
  def deep_freeze
    unless self.is_a? String
      frozen = self.dup.each do |key, value|
        if (value.is_a?(Enumerable) && !value.is_a?(String))
          value.deep_freeze
        else
          value.freeze
        end
      end
      self.replace(frozen)
    end
    self.freeze
  end
end

class Hash
  def deep_freeze
    frozen = self.dup.each do |key, value|
      if (value.is_a?(Enumerable) && !value.is_a?(String))
        value.deep_freeze
      else
        value.freeze
      end
    end
    self.replace(frozen)
    self.freeze
  end
end