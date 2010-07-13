module Mailman
  class Configuration

    # @return [Logger] the application's logger
    attr_accessor :logger

    # @return [Hash] the configuration hash for POP3
    attr_accessor :pop3

    # @return [Fixnum] the poll interval for POP3 or IMAP. Setting this to 0
    #   disables polling
    attr_accessor :poll_interval

    # @return [String] the path to the maildir
    attr_accessor :maildir

    def logger
      @logger ||= Logger.new(STDOUT)
    end

    def poll_interval
      @poll_interval ||= 60
    end

  end
end
