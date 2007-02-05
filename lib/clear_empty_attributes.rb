class ActiveRecord::Base
  before_validation :clear_empty_attrs
protected
  def clear_empty_attrs
    @attributes.each do |key,value|
      self[key] = nil if value.blank?
    end
  end
end