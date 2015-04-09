module JazzyTo
  module ViewHelpers
    def jazzy_to(name=nil)
      namespace = request.params[:controller].split('/')
      controller = namespace.pop
      namespace = namespace.count == 0 ? nil : namespace.pop
      content = JazzyTo::ContentFinder.fetch({
        :namespace => namespace,
        :controller => controller,
        :action => params[:action],
        :name => name
      })

      if JazzyTo.configuration.editor_check.call
        "#{content.pending_content}<button type='button'>Edit</button>".html_safe
      else
        content.content.html_safe
      end
    end
  end
end
