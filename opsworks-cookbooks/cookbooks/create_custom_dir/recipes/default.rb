#
# Cookbook:: create_custom_dir
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

directory '/nfs-root-default' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end


file '/nfs-root-default/test-custom-json' do
  content "try to get string #{node['string_test']} and get list #{node['list_test']}"
  mode '0755'
  owner 'web_admin'
  group 'web_admin'
end
