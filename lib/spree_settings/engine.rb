module SpreeSettings
  class Engine < Rails::Engine
    engine_name 'spree_settings'

    config.autoload_paths += %W(#{config.root}/lib)

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
