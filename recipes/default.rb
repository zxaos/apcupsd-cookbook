#
# Cookbook Name:: apcupsd
# Recipe:: default
#
# Copyright (C) 2013 Matt Bond
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#    http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

package 'apcupsd'

#Validate some attributes
if defined? node[:apcupsd][:upsname] and not node[:apcupsd][:upsname].size.between(1,8)
    Chef::Application.fatal!("If supplied, UPSNAME must be between 1 and 8 characters")
end

template '/etc/apcupsd/apcupsd.conf' do
    source  'apcupsd.conf.erb'
    notifies :restart, 'service[apcupsd]'
end

service 'apcupsd' do
    action [:enable, :start]
end
