require 'vagrant/errors'

module VagrantPlugins
  module ProviderHyperV
    module Errors

      class VagrantHyperVError < ::Vagrant::Errors::VagrantError
        error_namespace("vagrant_hyperv.errors")
      end

    end
  end
end