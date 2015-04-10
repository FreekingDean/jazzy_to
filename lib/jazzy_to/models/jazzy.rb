require "active_record"
module JazzyTo
  class Jazzy < ActiveRecord::Base
    def approve!
      self.content = self.pending_content
      self.pending_content = nil
      self.save
    end

    def reject!
      self.pending_content = nil
      self.save
    end

    def pending_content
      text = self.read_attribute(:pending_content) || self.content
      return text
    end

    def content
      text =  self.read_attribute(:content) || ""
      return text
    end
  end
end
