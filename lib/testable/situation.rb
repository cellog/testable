require "testable/errors"

module Testable
  module Situation
    private

    def url_is_empty
      puts "PROBLEM: url_is attribute empty.\n" \
      "The url_is attribute is empty on the definition " \
      "'#{retrieve_class(caller)}'.\n\n"
      raise Testable::Errors::NoUrlForDefinition
    end

    def no_url_provided
      puts "PROBLEM: no url provided.\n" \
      "You called a '#{retrieve_method(caller)}' action but the " \
      "definition '#{self.class}' does not have a url_is attribute.\n" \
      "Either provide the url_is attribute or pass the url as an " \
      "argument to the visit call.\n\n"
      raise Testable::Errors::NoUrlForDefinition
    end

    def title_is_empty
      puts "PROBLEM: title_is attribute empty.\n" \
      "The title_is attribute is empty on the definition " \
      "'#{retrieve_class(caller)}'.\n\n"
      raise Testable::Errors::NoTitleForDefinition
    end

    def no_title_is_provided
      puts "PROBLEM: No title provided.\n" \
      "You called a '#{retrieve_method(caller)}' action but the " \
      "definition '#{self.class}' does not have a title_is attribute.\n\n"
      raise Testable::Errors::NoTitleForDefinition
    end

    def retrieve_method(caller)
      caller[0][/`.*'/][1..-2]
    end

    def retrieve_class(caller)
      caller[1][/`.*'/][8..-3]
    end
  end
end
