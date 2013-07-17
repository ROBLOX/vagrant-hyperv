require "pathname"

module VagrantPlugins
  module ProviderHyperV

    def self.vagrant_hyperv_root
      @vagrant_hyperv_root ||= Pathname.new(File.expand_path("../../", __FILE__))
    end

    def self.load_script(script_file_name)
      File.read(expand_script_path(script_file_name))
    end

    def self.load_script_template(script_file_name, options)
      Vagrant::Util::TemplateRenderer.render(expand_script_path(script_file_name), options)
    end

    def self.expand_script_path(script_file_name)
      File.expand_path("lib/vagrant-hyperv/scripts/#{script_file_name}", VagrantHyperV.vagrant_hyperv_root)
    end

  end
end

require "vagrant-hyperv/plugin"
