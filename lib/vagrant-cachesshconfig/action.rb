module VagrantCacheSSHConfig
  class Action
    def initialize(app, env)
      @app = app
      @env = env
      @machine = env[:machine]
      @set = false
    end

    def call(env)
      # So nice, we call it twice.
      # cache_ssh_config!
      @app.call(env)
      cache_ssh_config!
    end

    private

    def cache_ssh_config!
      if (not @set)
        @machine.guest.capability(:cachesshconfig)
        @set = true
      end
    end
  end

end
