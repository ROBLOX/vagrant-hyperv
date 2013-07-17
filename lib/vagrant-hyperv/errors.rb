require 'vagrant/errors'

module VagrantHyperV
  module Errors

    class VagrantHyperVError < ::Vagrant::Errors::VagrantError
      error_namespace("vagrant_hyperv.errors")
    end

  end
end