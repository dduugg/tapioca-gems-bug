# typed: strong
# frozen_string_literal: true

require 'ruby_template/version'

module RubyTemplate
  class Error < StandardError; end
  # Your code goes here...

  ALLOWED_RESOURCE_OWNER_TYPES = T.let(Set['User', 'Partner'].freeze, T::Set[T.class_of(String)])
end
