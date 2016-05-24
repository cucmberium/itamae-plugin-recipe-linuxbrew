case node[:platform]
when 'debian', 'ubuntu', 'mint'
  package 'build-essential'
  package 'curl'
  package 'python-setuptools'
  package 'ruby'
when 'redhat', 'fedora', 'amazon'
  package 'gcc' # Development Tools
  package 'curl'
  package 'python-setuptools'
  package 'ruby'
  package 'ruby-irb'
end

package 'git'
