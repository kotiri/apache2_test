#
# Cookbook Name:: apache2_test
# Recipe:: mod_authz_user
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

secure_dir = "#{node['apache_test']['root_dir']}/secure"

directory secure_dir do
  action :create
end

bash "add-credentials" do
  code %Q{
    htpasswd -b -c #{secure_dir}/.htpasswd #{node['apache_test']['auth_username']} #{node['apache_test']['auth_password']}
    htpasswd -b #{secure_dir}/.htpasswd meatballs secret
  }
  action :run
end

include_recipe "apache2::mod_authz_user"

apache2_web_app "secure" do
  template "authz_user.conf.erb"
  params({
    :secure_dir => secure_dir,
    :username => node['apache_test']['auth_username']
  })
end
