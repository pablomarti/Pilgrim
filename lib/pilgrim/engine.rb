module Pilgrim
  class Engine < ::Rails::Engine
    isolate_namespace Pilgrim

    config.generators.load_generators

    initializer 'pilgrim.action_controller' do |app|
      ActiveSupport.on_load :action_controller do
        extend Pilgrim::Methods::ClassMethods
        include Pilgrim::Methods::InstanceMethods
        helper Pilgrim::ApplicationHelper
      end
    end
  end
end