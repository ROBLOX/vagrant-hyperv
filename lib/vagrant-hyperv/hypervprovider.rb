require 'log4r'

module VagrantPlugins
  module ProviderHyperV

    class Provider < Vagrant.plugin("2", :provider)
      attr_reader :driver

      def initialize(machine)
        @machine = machine
        @logger = Log4r::Logger.new("vagrant_hyperv::provider::hyperv")
        @logger.debug("initializing HyperV Provider")

        # This method will load in our driver, so we call it now to
        # initialize it.
        machine_id_changed
      end

    end
  end
end
