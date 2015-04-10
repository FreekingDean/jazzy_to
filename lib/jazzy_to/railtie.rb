module JazzyTo
  class Railtie < Rails::Railtie
    railtie_name :jazzy_to

    initializer "jazzy_to.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end

    rake_tasks do
      load "tasks/set_jazzy.rake"
      load "tasks/reset_jazzies.rake"
    end
  end
end
