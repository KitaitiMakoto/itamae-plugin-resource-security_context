require 'itamae/plugin/resource/security_context/version'

module Itamae
  module Plugin
    module Resource
      class SecurityContext < ::Itamae::Resource::Base
        define_attribute :action, default: :nothing
        define_attribute :path, type: [String], default_name: true
        define_attribute :recursive, type: [TrueClass, FalseClass], default: false

        def action_restore(options)
          cmd = ['restorecon', attributes.path]
          cmd << '-R' if attributes.recursive
          run_command cmd
        end
      end
    end
  end
end
