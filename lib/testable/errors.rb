module Testable
  module Errors
    NoUrlForDefinition = Class.new(StandardError)
    NoUrlMatchForDefinition = Class.new(StandardError)
    NoUrlMatchPossible = Class.new(StandardError)
    NoTitleForDefinition = Class.new(StandardError)
    PageNotValidatedError = Class.new(StandardError)

    class PageURLFromFactoryNotVerified < StandardError
      def message
        "The page URL was not verified during a factory setup."
      end
    end
  end
end
