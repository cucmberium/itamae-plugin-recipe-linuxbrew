(node[:linuxbrew][:packages] || []).each do |package_name|
  execute "Install package: #{package_name}" do
    user node[:linuxbrew][:user]
    command "/bin/bash -lc \"brew install #{package_name}\""
    not_if  "/bin/bash -lc \"brew list #{package_name}\""
  end
end
