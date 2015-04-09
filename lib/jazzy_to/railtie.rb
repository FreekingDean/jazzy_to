module JazzyTo
  class Railtie < Rails::Railtie
    initializer "jazzy_to.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end
