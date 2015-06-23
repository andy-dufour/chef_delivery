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

delivery_server "delivery01.example.com"


#
#build_node "builder01.example.com"
#
