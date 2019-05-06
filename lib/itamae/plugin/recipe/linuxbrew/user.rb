node.reverse_merge!(
  linuxbrew: {
    scheme:   'git',
    user:     ENV['USER'],
    packages: [],
    taps: [],
  }
)

unless node[:linuxbrew][:linuxbrew_root]
  case node[:platform]
  when 'osx', 'darwin'
    user_dir = '/Users'
  else
    user_dir = '/home'
  end
  node[:linuxbrew][:linuxbrew_root] = File.join(user_dir, node[:linuxbrew][:user], '.linuxbrew')
end

include_recipe 'linuxbrew::install'