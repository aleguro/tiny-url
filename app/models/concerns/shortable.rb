# General module to create a short version of any kind of string
# => configurable by a DSL called shortify 
module Shortable
  extend ActiveSupport::Concern

  included do
    before_save :set_short_version
  end

  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods

    attr_accessor :field

    # Maps to shortify a class instance attribute setting the value in another attribute
    def shortify(regular_attribute:, shorter_attribute:)
      @field = { regular: regular_attribute, shorter: shorter_attribute }
    end
  end

  # Sets a short version of an url
  def set_short_version
    send "#{self.class.field[:shorter]}=", "#{short_word}"
  end

  private 

  # TODO: Improve short url generator this could lead into potencial duplicates
  def short_word
    (0...8).map { (65 + rand(26)).chr }.join
  end
end