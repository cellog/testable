require "logger"

module Testable
  class Logger
    def create(output = $stdout)
      logger = ::Logger.new(output)
      logger.progname = 'Testable'
      logger.level = :UNKNOWN
      logger.formatter = proc do |severity, time, progname, msg|
        "#{time.strftime('%F %T')} - #{severity} - #{progname} - #{msg}\n"
      end

      logger
    end
  end
end
