#
# Cookbook Name:: apache2_test
# Recipe:: mod_expires
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
include_recipe "apache2::mod_expires"

directory "#{node['apache_test']['root_dir']}/cachetest" do
  action :create
end

apache2_web_app "cachetest" do
  template "cache_test.conf.erb"
  params({
    :cache_expiry_seconds => node['apache_test']['cache_expiry_seconds']
  })
end
