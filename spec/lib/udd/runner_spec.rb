require "spec_helper"

describe Udd::Runner do

  describe "#run" do
    before do
      @creator = Udd::Runner.new

      @test    = {"title" => "Test Title", "description" => "test desc", "reward" => 0.05}
    end

    it "creates the appropriate HIT (turkee task) and Test" do
      #Turkee::TurkeeTask.expects(:create_hit).once
      @creator.stubs(:host).returns("http://abc123.localtunnel.io")
      @creator.expects(:create_tunnel).once

      @creator.run(@test)
      Turkee::TurkeeTask.count.should == 1
      Test.count.should == 1
    end
  end
end
