#
# Cookbook Name :: ExifTool
# Recipe :: default
#
# Copyright 2013, Arizona
#
# All rights reserved - Do Not Redistribute
# 

# ExifTool Recipe
remote_file "#{Chef::Config[:file_cache_path]}/#{node['exiftool']['name_version_extension']}" do
  source "#{node['exiftool']['url']}"
  action :create_if_missing
end

package "perl-ExtUtils-MakeMaker"

bash "compile_exiftool_source" do
  cwd Chef::Config[:file_cache_path]
  code <<-EOH
    tar zxf #{node['exiftool']['name_version_extension']}
	cd #{node['exiftool']['name_version']}
    perl Makefile.PL
	make && make install
  EOH
end
