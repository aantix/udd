require "spec_helper"

describe Udd::Creator do

  describe ".create" do
    before do
      @creator = Udd::Creator.new
    end

    it "runs" do
      @creator.create.should be_true
    end
  end

end

