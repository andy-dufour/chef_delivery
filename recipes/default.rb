#
# Cookbook Name:: chef_delivery
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

#Include driver and all machine options in the recipe below
include_recipe 'chef_delivery::_vagrant'

#
#chef_server "chef01.example.com"
#

chef_delivery_server "delivery01" do
	roles 'backend'
	addons %w(test test2)
end


#
#chef_delivery_build_node "builder01.example.com"
#
