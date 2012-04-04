#
# Cookbook Name:: apache2_test
# Attributes:: default
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

default['apache_test']['auth_username'] = 'bork'
default['apache_test']['auth_password'] = 'secret'
default['apache_test']['cache_expiry_seconds'] = 60
default['apache_test']['app_dir'] = '/home/apache2/env'
default['apache_test']['cgi_dir'] = '/usr/lib/cgi-bin'
default['apache_test']['root_dir'] = '/var/www'
default['apache_test']['remote_host_ip'] = '192.168'
