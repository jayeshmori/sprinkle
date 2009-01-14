module Sprinkle
  module Installers
    # = FreeBSD Port Installer
    #
    # The Port installer installs FreeBSD ports.
    # 
    # == Example Usage
    #
    # Installing the magic_beans port.
    #
    #   package :magic_beans do
    #     port 'magic/magic_beans'
    #   end
    #
    class Port < Installer
      attr_accessor :port #:nodoc:

      def initialize(parent, port, &block) #:nodoc:
        super parent, &block
        @port = port
      end

      protected

        def install_commands #:nodoc:
          "sh -c 'cd /usr/ports/#{@port} && make BATCH=yes install clean'"
        end

    end
  end
end