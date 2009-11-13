require 'activerecord'

class ActiveRecord::Base

  before_validation :clear_empty_attrs
  before_save :clear_empty_attrs # needed to work correctly with update_attribute too

  protected

  def clear_empty_attrs
    @attributes.each do |key,value|
      self[key] = nil if value.is_a?(String) && value.blank?
    end
  end
end