execute 'install docker' do
  command 'wget -qO- https://get.docker.com/ | sh'
  action :run
end


chef_gem 'chef-provisioning-docker'

require 'chef/provisioning/docker_driver'

with_driver 'docker'

with_machine_options(
  docker_options: {
    :base_image => {
          :name => 'ubuntu',
          :repository => 'ubuntu',
          :tag => '14.04'
      }
  }
)