# frozen_string_literal: true

require "solidus_simple_dash"

module SolidusSimpleDash
  class Engine < Rails::Engine
    include SolidusSupport::EngineExtensions

    isolate_namespace Spree

    engine_name "solidus_simple_dash"

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    initializer "solidus_simple_dash.environment", before: :load_config_initializers do
      SolidusSimpleDash::Config = SolidusSimpleDash::Configuration.new
    end

    config.to_prepare do
      ::Spree::Backend::Config.configure do |config|
        # Solidus 4.0 and later use a different way to define menu items
        if Gem::Version.new(::Spree.solidus_version) >= Gem::Version.new('4.0')
          new_item = config.class::MenuItem.new(
            label: "overview",
            icon: "bar-chart",
            url: :admin_overview_path,
            condition: -> { can?(:manage, ::Spree::Overview) }
          )
        else
          new_item = config.class::MenuItem.new(
            [:overview],
            'bar-chart',
            label: 'overview',
            condition: -> { can?(:manage, ::Spree::Overview) }
          )
        end

        config.menu_items << new_item
      end
    end
  end
end
