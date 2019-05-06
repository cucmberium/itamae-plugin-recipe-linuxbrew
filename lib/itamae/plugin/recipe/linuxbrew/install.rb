include_recipe 'linuxbrew::dependency'

scheme = node[:linuxbrew][:scheme]

git node[:linuxbrew][:linuxbrew_root] do
  repository "#{scheme}://github.com/Homebrew/brew.git"
  user node[:linuxbrew][:user]
end

# execute 'echo \'\nif [ -d "$HOME/.linuxbrew" ]; then\n  eval $($HOME/.linuxbrew/bin/brew shellenv)\nfi\' >> /etc/profile' do
#   user 'root'
# end
# 
# execute 'echo \'\nif [ -d "$HOME/.linuxbrew" ]; then\n  eval $($HOME/.linuxbrew/bin/brew shellenv)\nfi\' >> /etc/zshrc' do
#   user 'root'
# end
# 
# remote_file "/etc/profile.d/linuxbrew.sh" do
#   action :create
#   source "files/linuxbrew.sh"
#   owner 'root'
#   group 'root'
#   mode '644'
# end

include_recipe 'linuxbrew::tap'
include_recipe 'linuxbrew::package'
