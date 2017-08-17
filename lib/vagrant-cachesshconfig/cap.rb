class VagrantCacheSSHConfig::Cap

  # @return [void]
  def self.cachesshconfig(machine)
    user = machine.config.ssh.username
    host = machine.config.ssh.host
    port = machine.config.ssh.port
    iden = machine.config.ssh.private_key_path

    puts "${user} ${host} ${port} ${iden}"
  end

end
