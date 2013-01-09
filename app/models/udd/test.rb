module Udd
  class Test < ActiveRecord::Base
    attr_accessible :task, :url
    belongs_to :task, :class_name => "Turkee::TurkeeTask"
  end
end
