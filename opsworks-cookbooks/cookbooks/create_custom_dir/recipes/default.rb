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


template '/nfs-root-default/test-content' do
  source 'test_content.erb'
  owner 'root'
  group 'root'
  mode '0755'
end