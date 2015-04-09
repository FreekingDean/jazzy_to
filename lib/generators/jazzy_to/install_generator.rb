require 'rails/generators/base'

module JazzyTo
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include Rails::Generators::Migration
      source_root File.expand_path('../templates', __FILE__)

      def self.next_migration_number(path)
        Time.now.utc.strftime("%Y%m%d%H%M%S")
      end

      def create_jazzy
        migration_template "create_jazzies.rb", "db/migrate/create_jazzies.rb"
      end
    end
  end
end
