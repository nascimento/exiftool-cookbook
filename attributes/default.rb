#
# Cookbook Name :: ExifTool
# Attribute :: default
#
# Copyright 2013, Arizona
#
# All rights reserved - Do Not Redistribute
# 

# ExifTool Attributes
default['exiftool']['name_version'] = "Image-ExifTool-9.34"
default['exiftool']['name_version_extension'] = "#{node['exiftool']['name_version']}.tar.gz"
default['exiftool']['url'] = "http://www.sno.phy.queensu.ca/~phil/exiftool/#{node['exiftool']['name_version_extension']}"