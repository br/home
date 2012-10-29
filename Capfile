#!/usr/bin/env ruby

require 'alpha_omega/deploy'

set :releases, [ ]

set(:deploy_to) { capture("cd ~ && pwd").chomp }

set :root_user, "defn"
set :root_group, "defn"

set :use_sudo, false
set :dir_perms, "0750"

set :bundler_options, "--path vendor/bundle"

# application deploy
namespace :git do
  task :bootstrap do
    # workaround git clone and non-empty directories
    run "[[ -d .git ]] || { git init && git remote add origin #{repository}; }"
  end
end

namespace :vim do
  task :bundle do
    run "cd #{deploy_release} && bin/bundle-vim"
  end
end

namespace :badonkadonk do
  task :delay do
    run "#{ruby_loader} ruby -e 'sleep(rand(10))'"
  end
end

# hooks into alpha_omega deploy
after "deploy:bootstrap_code", "git:bootstrap"
after "deploy:bundle", "vim:bundle"

# interesting hosts
Deploy self, __FILE__ do |admin, node| 
  { :deploy => { } }
end

