include_recipe 'linuxbrew::dependency'

scheme = node[:linuxbrew][:scheme] || 'https'

users = node[:linuxbrew][:users] || [node[:linuxbrew][:user]]

users.each do |linuxbrew_user|
  git "/home/#{linuxbrew_user}/.linuxbrew" do
    repository "#{scheme}://github.com/linuxbrew/brew.git"
    user linuxbrew_user
  end
end

remote_file "/etc/profile.d/linuxbrew.sh" do
  action :create
  source "files/linuxbrew.sh"
  owner 'root'
  group 'root'
  mode '644'
end

include_recipe 'linuxbrew::tap'
include_recipe 'linuxbrew::package'
