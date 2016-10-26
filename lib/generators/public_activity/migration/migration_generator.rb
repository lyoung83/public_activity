require 'sequel/core'

module PublicActivity
  module Generators
    # Migration generator that creates migration file from template
    class MigrationGenerator < Sequel::Database
      source_root File.expand_path("../templates", __FILE__)

      argument :name, :type => :string, :default => 'create_activities'
      # Create migration in project's folder
      def generate_files
        migration_template 'migration.rb', "db/migrate/#{name}.rb"
      end
    end
  end
end
