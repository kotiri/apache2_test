#
# Cookbook Name:: apache2_test
# Recipe:: mod_status_remote
#
# Copyright 2012, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe "apache2::default"

template "#{node['apache']['dir']}/mods-available/status.conf" do
  mode "0644"
  variables({'remote_host' => node['apache_test']['remote_host_ip']})
end
