module Subscriber
  class Engine < ::Rails::Engine
    isolate_namespace Subscriber
    config.generators do |g|                                                               
      g.test_framework :rspec
      g.integration_tool :rspec
      g.fixture_replacement :factory_girl
    end
    initializer 'subscriber.action_controller' do |app|
      ActiveSupport.on_load :action_controller do
        helper Subscriber::ApplicationHelper
      end
    end
  end
end
