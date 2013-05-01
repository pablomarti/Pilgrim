module Pilgrim
  module Generators
    class GenerateViewsGenerator < ::Rails::Generators::Base
      source_root File.expand_path("../../../../../app/views", __FILE__)
      desc "Generate Views of Pilgrim"

      def copy_views
        directory "pilgrim", "app/views/billify"
      end      
    end
  end
end