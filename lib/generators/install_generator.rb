require 'tasks/turkee'
require 'rails/generators'
require File.expand_path('../utils', __FILE__)

# http://guides.rubyonrails.org/generators.html
# http://rdoc.info/github/wycats/thor/master/Thor/Actions.html
# keep generator idempotent, thanks
# Thanks to https://github.com/sferik/rails_admin !

module Udd
  class InstallGenerator < Rails::Generators::Base

    source_root File.expand_path("../templates", __FILE__)
    include Rails::Generators::Migration

    def install
      template "udd.yml", "config/udd.yml"

      Rake::Task['turkee'].invoke
    end
  end
end