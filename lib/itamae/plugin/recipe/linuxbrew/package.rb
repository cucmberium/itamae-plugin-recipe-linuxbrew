users = node[:linuxbrew][:users] || [node[:linuxbrew][:user]]

users.each do |linuxbrew_user|
  (node[:linuxbrew][:packages] || []).each do |package_name|
    execute "[#{linuxbrew_user}] Install package: #{package_name}" do
      user linuxbrew_user
      command "/bin/bash -lc \"brew install #{package_name}\""
      not_if  "/bin/bash -lc \"brew list #{package_name}\""
    end
  end
end
