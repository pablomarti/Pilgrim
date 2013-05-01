module Pilgrim
  module Generators
    class GenerateViewsGenerator < ::Rails::Generators::Base
      source_root File.expand_path("../../../../../app/views", __FILE__)
      desc "Generate Views of Pilgrim"

      def copy_views
        directory "pilgrim", "app/views/pilgrim"
      end      
    end
  end
end