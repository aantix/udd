module Udd
  class Test < ActiveRecord::Base
    attr_accessible :task
    belongs_to :task, :class_name => "Turkee::TurkeeTask"
  end
end
