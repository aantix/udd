require "yaml"

module Udd
  class Creator
     def create
       tests = read_yaml
       display(tests)
       selected_test = prompt
       run(selected_test)
     end

    private
      def run(selected_test)


      end

      def prompt
        prompt = EasyPrompt.new
        prompt.ask("Which test to run?")
      end

      def display(tests)
        tests.each_with_index do |(k, test), index|
          puts "#{index}. #{test["title"]}"
        end
      end

      def read_yaml
        YAML.load_file("#{Rails.root}/config/udd.yml")
      end
  end
end
