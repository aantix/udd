require "generators/udd/install_generator"
require "udd/creator"

namespace :udd do
  desc "Installs UDDs config file"
  task :install do
    installer = Udd::InstallGenerator.new
    installer.install
  end

  desc "Starts a UDD test"
  task :create do
    creator = Udd::Creator.new
    creator.create
  end
end
