module JazzyTo
  module ViewHelpers
    def jazzy_to(name=nil)
      namespace = request.params[:controller].split('/')
      controller = namespace.pop
      namespace = namespace.count == 0 ? "default" : namespace.pop
      @content = JazzyTo::ContentFinder.fetch({
        :namespace => namespace,
        :controller => controller,
        :action => params[:action],
        :name => name
      })

      if eval(JazzyTo.configuration.editor_check)
        html = File.open(
          File.join(
            File.dirname(File.expand_path(__FILE__)), "templates/jazzy.html.erb"
          )
        ).read
        erb = ERB.new(html)

        return erb.result(binding).html_safe
      else
        return @content.content.html_safe
      end
    end
  end
end
