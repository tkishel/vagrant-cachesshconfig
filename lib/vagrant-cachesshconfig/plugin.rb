require 'vagrant'
require 'vagrant-cachesshconfig'

class VagrantCacheSSHConfig::Plugin < Vagrant.plugin(2)
  name 'cachesshconfig'

  description <<-DESC
  This plugin caches ssh-config info, accelerating ssh connections.
  DESC

  action_hook('CacheSSHConfig on shutdown', :machine_action_up) do |hook|
    require_relative 'action'
    action = VagrantCacheSSHConfig::Action

    hook.after(action)
  end

  # For everything else.
  action_hook('CacheSSHConfig on halt', :machine_action_halt) do |hook|
    require_relative 'action'
    action = VagrantCacheSSHConfig::Action
    hook.prepend(action)
  end

  action_hook('CacheSSHConfig on reload', :machine_action_reload) do |hook|
    require_relative 'action'
    action = VagrantCacheSSHConfig::Action
    hook.prepend(action)
  end

  action_hook('CacheSSHConfig on destroy', :machine_action_destroy) do |hook|
    require_relative 'action'
    action = VagrantCacheSSHConfig::Action
    hook.prepend(action)
  end

  # For great justice.
  #[:linux].each do |os|
  #  guest_capability(os, :norequiretty) do
  #    require_relative 'cap'
  #    VagrantNoRequireTTY::Cap
  #  end
  #end

end
