package "nfs-kernel-server"

if node[:nfs] && node[:nfs][:exports]
  template "/etc/exports" do
    source "exports.erb"
    owner "root"
    group "root"
    mode 0644
  end

  service "nfs-kernel-server" do
    action [ :enable, :start ]
    running true
    supports :status => true, :restart => true
  end

  register_for_service('nfs_server', node[:nfs][:exports].to_hash)
else
  Chef::Log.warn "You included the NFS server recipe without defining nfs exports: set node[:nfs][:exports]."
end
