users = node[:linuxbrew][:users] || [node[:linuxbrew][:user]]

users.each do |linuxbrew_user|
  (node[:linuxbrew][:taps] || []).each do |tap|
    execute "[#{linuxbrew_user}] Add repository: #{tap}" do
      user linuxbrew_user
      command "/bin/bash -lc \"brew tap #{tap}\""
      not_if  "/bin/bash -lc \"brew tap | grep -q #{tap}\""
    end
  end
end
