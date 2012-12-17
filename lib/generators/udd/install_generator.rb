require 'tasks/turkee'
require 'rails/generators'

module Udd
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../templates", __FILE__)
    include Rails::Generators::Migration

    def install
      template "udd.yml", "config/udd.yml"
      generate "turkee", "skip"
    end
  end
end