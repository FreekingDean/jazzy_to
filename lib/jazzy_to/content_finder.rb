module JazzyTo
  class ContentFinder
    def self.fetch(query)
      query.keep_if {|k,_| JazzyTo.configuration.autotag.include? k}
      JazzyTo::Jazzy.find_or_create_by(query)
    end
  end
end
