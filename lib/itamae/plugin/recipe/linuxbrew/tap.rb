(node[:linuxbrew][:taps] || []).each do |tap|
  execute "Add repository: #{tap}" do
    user node[:linuxbrew][:user]
    command "/bin/bash -lc \"brew tap #{tap}\""
    not_if  "/bin/bash -lc \"brew tap | grep -q #{tap}\""
  end
end
