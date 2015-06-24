package 'virtualbox' do
  action :install
end

package 'vagrant' do
  action :install
end

chef_gem 'chef-provisioning-vagrant'

require 'chef/provisioning/vagrant_driver'

with_driver 'vagrant'

with_machine_options(
  vagrant_options: {
    'vm.box' => 'opscode-centos-6.6',
    'vm.url' => 'https://atlas.hashicorp.com/rickard-von-essen/boxes/opscode_centos-6.6'
  }
)