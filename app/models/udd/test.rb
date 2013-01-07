module Udd
  class Test < ActiveRecord::Base
    belongs_to :task, :class_name => "Turkee::TurkeeTask"
  end
end
