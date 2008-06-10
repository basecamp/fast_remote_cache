$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "..", "lib"))

namespace :fast_remote_cache do

  desc <<-DESC
    Perform any setup required by fast_remote_cache. This is called
    automatically after deploy:setup, but may be invoked manually to configure
    a new machine. It is also necessary to invoke when you are switching to the
    fast_remote_cache strategy for the first time.
  DESC
  task :setup, :except => { :no_release => true } do
    if deploy_via == :fast_remote_cache
      strategy.setup!
    else
      logger.warn "you're including the fast_remote_cache strategy, but not using it!"
    end
  end

end

after "deploy:setup", "fast_remote_cache:setup"
