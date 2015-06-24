actions :create, :delete

default_action :create

attribute :name, :name_attribute => true, :kind_of => String, :required => true
attribute :roles,     kind_of: [Array, String], default: 'backend'
attribute :addons,    kind_of: [Array, String], default: ''