action :create do
  machine new_resource.name do
    recipe 'chef_delivery::delivery'
  end
end

action :destroy do
  machine new_resource.name do
    action :destroy
  end
end