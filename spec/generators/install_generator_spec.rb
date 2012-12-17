require 'spec_helper'
require 'fileutils'

describe Udd::InstallGenerator do

  describe "#install" do
    before do
      @config    = File.expand_path("../../../config", __FILE__)
      @db        = File.expand_path("../../../db/migrate", __FILE__)
      @installer = Udd::InstallGenerator.new

      # Cleanup the installed migrations from the dummy app
      FileUtils.rm(Dir.glob("#{@db}/*.rb"), :force => true)
      FileUtils.rm("#{@config}/initializers/turkee.rb", :force => true)
      FileUtils.rm("#{@config}/udd.yml", :force => true)
    end

    after do
      # Cleanup the installed migrations from the dummy app
      FileUtils.rm(Dir.glob("#{@db}/*.rb"))
      FileUtils.rm("#{@config}/initializers/turkee.rb")
      FileUtils.rm("#{@config}/udd.yml")
    end

    it "copies over the config file" do
      puts "config = #{@config}"
      File.exists?("#{@config}/udd.yml}").should be_false
      @installer.install
      File.exists?("#{@config}/udd.yml}").should be_true
    end
  end
end
