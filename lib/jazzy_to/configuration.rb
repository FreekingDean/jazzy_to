module JazzyTo
  class Configuration
    attr_accessor :autotag, :editor_check

    def initialize
      #Current supported tags are
      #:namespace
      #:controller
      #:action
      #:name
      @autotag = [:controller, :action, :name]
      @editor_check = lambda { true }
    end
  end
end
