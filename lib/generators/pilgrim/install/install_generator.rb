module Pilgrim
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)
      desc "Install Pilgrim"

      def copy_migrations
      	rake "pilgrim:install:migrations"
      end

      #def copy_files
        #copy_file "countries.sql", "db/countries.sql"
        #copy_file "states.sql", "db/states.sql"
        #copy_file "cities.sql", "db/cities.sql"
      #end      
    end
  end
end