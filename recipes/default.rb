#
# Cookbook Name:: nodejs
# Recipe:: default
#
# This software is released under the MIT License.
# http://opensource.org/licenses/mit-license.php

case node['platform']
when 'centos', 'redhat', 'amazon', 'scientific', 'fedora'
  include_recipe 'yum-epel'
  %w{nodejs npm}.each do |package_name|
    package package_name do
      action :install
    end
  end
end

# vim: filetype=ruby.chef
