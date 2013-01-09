require "localtunnel/tunnel"

module Udd
  class Runner
    LIFETIME        = 1
    DURATION        = 1
    NUM_ASSIGNMENTS = 100

    def initialize
      @tunnel = nil
    end

    def run(test)
      create_tunnel
      turkee_task = Turkee::TurkeeTask.create_hit(@tunnel['host'], test["title"],  test["description"], nil,
                                    NUM_ASSIGNMENTS, test["reward"], LIFETIME, DURATION,
                                    {}, {}, {:form_url => test['url']})

      Test.create!(:url => test['url'], :task => turkee_task)
    end

    def create_tunnel
      @tunnel = LocalTunnel::Tunnel.new(3000, nil)
      @tunnel.register_tunnel
      @tunnel.start_tunnel
    end
  end
end
