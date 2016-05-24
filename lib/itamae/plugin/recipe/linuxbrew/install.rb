include_recipe 'linuxbrew::dependency'

scheme = node[:linuxbrew][:scheme] || 'https'

git "/home/#{node[:linuxbrew][:user]}/.linuxbrew" do
  repository "#{scheme}://github.com/linuxbrew/brew.git"
  user node[:linuxbrew][:user]
end

remote_file "/etc/profile.d/linuxbrew.sh" do
  action :create
  source "files/linuxbrew.sh"
  owner 'root'
  group 'root'
  mode '644'
end

include_recipe 'linuxbrew::tap'
