require 'active_support/core_ext/string/inflections'

module Lol
  class Model < ActiveRecord::Base
    self.abstract_class = true

    # @!attribute [r] raw
    # @return [Hash] raw version of options Hash used to initialize Model
    attr_reader :raw

    # Initializes a Lol::Model
    # @param options [Hash]
    # @return [Lol::Model]
    def initialize options = {}
      super @raw
     
      @raw = options
      options.each do |attribute_name, value|
        send "#{attribute_name.to_s.underscore}=", value
        next if attribute_name == "id"
        self[attribute_name.to_s.underscore] = value
      end
    end

    # Re-written Object#inspect to skip the @raw instance variable
    # @return [String] representation of object
    def inspect
      vars = self.instance_variables.
        select {|v| v != :@raw}.
        map{|v| "#{v}=#{instance_variable_get(v).inspect}"}.join(", ")
      "<#{self.class}: #{vars}>"
    end
  end
end