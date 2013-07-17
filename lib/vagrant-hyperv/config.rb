require "vagrant"

module VagrantPlugins
  module HyperV
    class Config < Vagrant.plugin("2", :config)
      # The HyperV hostname or ip address
      #
      # @return [String]
      attr_accessor :hyperv_host

      # The timeout to wait for an instance to become ready.
      #
      # @return [Fixnum]
      attr_accessor :instance_ready_timeout

      # The tags for the machine.
      #
      # @return [Hash<String, String>]
      attr_accessor :tags

      # The user data string
      #
      # @return [String]
      attr_accessor :user_data

      def initialize
        @hyperv_host            = UNSET_VALUE
        @instance_ready_timeout = UNSET_VALUE
        @tags                   = {}
        @user_data              = UNSET_VALUE
      end

      #-------------------------------------------------------------------
      # Internal methods.
      #-------------------------------------------------------------------

      def merge(other)
        super.tap do |result|
          # Merge in the tags
          result.tags.merge!(self.tags)
          result.tags.merge!(other.tags)
        end
      end

      def finalize!
        # AMI must be nil, since we can't default that
        @hyperv_host = nil if @hyperv_host == UNSET_VALUE

        # Set the default timeout for waiting for an instance to be ready
        @instance_ready_timeout = 120 if @instance_ready_timeout == UNSET_VALUE

        # User Data is nil by default
        @user_data = nil if @user_data == UNSET_VALUE

        # Mark that we finalized
        @__finalized = true
      end

      def validate(machine)
        errors = _detected_errors

        errors << I18n.t("vagrant_hyperv.config.hyperv_host_required") if @hyperv_host.nil?


        { "HyperV Provider" => errors }
      end

    end
  end
end
