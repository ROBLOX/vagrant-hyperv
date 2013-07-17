require 'vagrant/errors'

module VagrantPlugins
  module HyperV
    module Errors

      class VagrantHyperVError < ::Vagrant::Errors::VagrantError
        error_namespace("vagrant_hyperv.errors")
      end

    end
  end
end